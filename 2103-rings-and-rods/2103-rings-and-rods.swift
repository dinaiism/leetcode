class Solution {
    func countPoints(_ rings: String) -> Int {
        let arr = Array(rings)
        var b : [String] = []
        var g : [String] = []
        var r : [String] = []
        for (index, value) in arr.enumerated() {
            switch value {
                case "B": b.append(String(arr[index+1]))
                case "G": g.append(String(arr[index+1]))
                case "R": r.append(String(arr[index+1]))
                default: break
            }
        }
        let setG = Set(g)
        let setB = Set(b)
        let setR = Set(r)
        var set = setG.intersection(setB)
        set = set.intersection(setR)
        return set.count
    }
}