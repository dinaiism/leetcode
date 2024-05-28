class Solution {
    func mostFrequent(_ nums: [Int], _ key: Int) -> Int {
        var dict = [Int: Int]()
        for (index, value) in nums.enumerated() {
            if value == key && index != nums.count - 1 {
                if dict[nums[index+1]] == nil {
                    dict[nums[index+1]] = 1
                } 
                else { 
                    dict[nums[index+1]]! += 1
                }
            }
        }
        var max = 0
        var k = 0
        print(dict)
        for (key, value) in dict {
            if value > max {
                max = value
                k = key
            }
        }
        return k
    }
}