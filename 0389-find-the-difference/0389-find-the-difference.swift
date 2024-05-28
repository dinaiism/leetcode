class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var arr1 = Array(s)
        arr1.sort(by: {a,b in a < b})
        var arr2 = Array(t)
        arr2.sort(by: {a,b in a < b})
        for (index, value) in arr1.enumerated() {
            if value != arr2[index] {
                return arr2[index]
            }
        }
        return arr2.last!
    }
}