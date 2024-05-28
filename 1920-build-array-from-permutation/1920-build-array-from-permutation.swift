class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        var ans = nums
        var i = 0
        for value in nums {
            ans[i] = nums[value]
            i+=1
        }
        return ans
    }
}