class Solution {
    func sum (_ arr: [Int], _ ind: Int) -> (Int, Int) {
        var a = 0
        var b = 0
        for (index, value) in arr.enumerated() {
            if index < ind {
                a += value
            }
            if index > ind {
                b += value
            }
        }
        return (a, b)
    }
    func pivotIndex(_ nums: [Int]) -> Int {
        for (index, value) in nums.enumerated() {
            let a = sum(nums, index).0
            let b = sum(nums, index).1
            if a == b {
                return index
            }
        }
        return -1
    }
}