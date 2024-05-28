class Solution {
    func numberOfPairs(_ nums: [Int]) -> [Int] {
        //var num = nums.sorted(by: {a, b in a < b})
        var dict : [Int: Int] = [ : ]
        var ans = [0, 0]
       
        
        for value in nums {
            if dict[value] == nil {
                dict[value] = 0
            }
            dict[value]! += 1
        }
        
        for (key, value) in dict {
            if value%2 == 0 {
                ans[0] += value/2
            } else {
                ans[1] += 1
                ans[0] += (value-1)/2
            } 
        }

        return ans

    } 

}