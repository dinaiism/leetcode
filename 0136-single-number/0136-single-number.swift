class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var arr = Array<Int>()
        for value in nums {
            if arr.contains(value) {
                arr.removeAll(where: {$0 == value})
            } else {
                arr.append(value)
            }
        }
        return arr[0]
    }
}