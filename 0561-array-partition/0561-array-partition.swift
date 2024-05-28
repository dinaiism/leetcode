class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var i = 0
        var count = 0
        var arr = nums
        arr.sort(by: {a, b in return a > b}) 
        while i < arr.count {
        count += min(arr[i], arr[i+1])
        i += 2
    }
        return count  
    }
}