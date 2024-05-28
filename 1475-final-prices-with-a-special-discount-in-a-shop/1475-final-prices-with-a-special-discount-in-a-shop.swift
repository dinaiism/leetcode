class Solution {
    func finalPrices(_ prices: [Int]) -> [Int] {
        var ans : [Int] = []
        var bool = false

        for (index, value) in prices.enumerated() {
            var next = index + 1
            bool = false
            while index != prices.count - 1 && next != prices.count  {
                if prices[next] <= value {
                    ans.append(value - prices[next])
                    bool = true
                }
                next += 1
                if bool == true {break}
            }
                
                if bool == false {
                    ans.append(value)
                }

        }
        return ans
    }
}