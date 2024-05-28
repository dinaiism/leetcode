class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var arr = Array<Int>()
       
        var count = 0
        var a = 0
        var c = 0
        for value in nums {
        if c % 2 == 0 {
            count = value
            c += 1
        } else { 
            a = value
            arr += Array(repeating: a, count: count)
            c += 1
        }
        }
        return arr
    }
}