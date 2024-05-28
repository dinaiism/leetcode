class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var c = 0
        for value in nums.sorted(by: {a, b in return a < b}) {
         if value == c {
             c += 1
         } else {
             return c
         }
        }
        return c
    }
}