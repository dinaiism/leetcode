class Solution {
    func getCommon(_ nums1: [Int], _ nums2: [Int]) -> Int {
        let set1 = Set(nums1)
        let set2 = Set(nums2)
        if set1.intersection(set2).isEmpty  {
            return -1
        } 
        return set1.intersection(set2).min()!
    }
}