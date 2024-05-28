class Solution {
    func findClosestNumber(_ nums: [Int]) -> Int {
        var num = nums[0]
        var number : Int?

        for value in nums {
            if value == -num {
                    number = max(value, num)
                } 
            else if abs(value) < abs(num) {
                num = value
                number = nil
            }    
    }
    return number == nil ? num :  number!
}
}