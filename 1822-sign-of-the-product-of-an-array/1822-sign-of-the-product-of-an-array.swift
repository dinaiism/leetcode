class Solution {
    func arraySign(_ nums: [Int]) -> Int {
        var neg = 0
        for value in nums {
            if value == 0 {
                return 0
            }
            if value < 0 {
                neg += 1 
            } 
        }
        return neg % 2 == 0 ? 1 : -1
    }
}