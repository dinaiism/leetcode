class Solution {
    func findSubarrays(_ nums: [Int]) -> Bool {
        var s = Set<Int>()
        if nums.count < 3 {
            return false
        }
        for (index, value) in nums.enumerated() {
             if index != nums.count - 1 {
            if s.contains(value+nums[index+1]) {
                return true
            }
                s.insert(value+nums[index+1])
             }
        }
        return false
    }
}