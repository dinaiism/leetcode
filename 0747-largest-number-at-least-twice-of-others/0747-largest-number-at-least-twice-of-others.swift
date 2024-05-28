class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        let max = nums.max()!
        for value in nums {
            if value * 2 > max && value != max{
                print(value)
                print(max)
                return -1
            }
        }
        return nums.firstIndex(of: max)!
    }
}