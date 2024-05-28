class Solution {
    func findRelativeRanks(_ score: [Int]) -> [String] {
        var array = Array(repeating: "", count: score.count)
        let top = score.sorted(by: >)
        for (index, value) in score.enumerated() {
            switch value {
            case top[0] : array[index] = "Gold Medal"
            case top[1] : array[index] = "Silver Medal"
            case top[2] : array[index] = "Bronze Medal"
            default: array[index] = "\(top.firstIndex(of: value)! + 1)"
        }
        }
        return array
    }
}