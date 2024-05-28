class Solution {
    func secondHighest(_ s: String) -> Int {
        var coll = Set<Int>()
        for char in s {
            if char.isNumber {
                coll.insert(Int(String(char))!)
            }
        }
        if coll.isEmpty || coll.count == 1 {
            return -1
        }

        coll.remove(coll.max()!)
        return coll.max()!
    }
}