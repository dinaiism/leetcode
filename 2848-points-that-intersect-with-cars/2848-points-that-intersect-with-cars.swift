class Solution {
    func numberOfPoints(_ nums: [[Int]]) -> Int {
        var s = Set<Int>()
        for value in nums {
            for i in value[0]...value[1] {
                s.insert(i)
            }
        }
        return s.count
    }
}