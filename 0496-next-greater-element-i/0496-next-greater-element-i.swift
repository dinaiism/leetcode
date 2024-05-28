class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var ans = Array<Int>()
        for (index, value) in nums1.enumerated() {
         var ind = nums2.firstIndex(where: ({$0 == value}))! + 1
         while ind != nums2.count {
         if  nums2[ind] > value {
             ans.append(nums2[ind])
             break
         } else {
             ind += 1
         }
         }
         if ind == nums2.count {
             ans.append(-1)
         }
        }
        return ans
    }
}