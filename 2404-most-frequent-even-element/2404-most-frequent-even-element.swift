class Solution {
    func mostFrequentEven(_ nums: [Int]) -> Int {
        var arr = nums.filter({$0 % 2 == 0})
        if arr.isEmpty {
            return -1
        }
        var dict = [Int : Int]()
        for value in arr {
            if dict[value] == nil {
                dict[value] = 1
            } else {
                dict[value]! += 1
            }
        }
        print(dict)
        return dict.max(by: {a, b in 
        if a.value == b.value {
           a.key > b.key 
        } else {
            a.value < b.value
        }
    })!.key

}
}