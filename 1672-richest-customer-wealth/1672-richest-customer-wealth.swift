class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var max = 0
        for arr in accounts {
            var count = 0
            for value in arr {
                count += value
            }
            if count > max {
                max = count
            }
        }
        return max
    }
}