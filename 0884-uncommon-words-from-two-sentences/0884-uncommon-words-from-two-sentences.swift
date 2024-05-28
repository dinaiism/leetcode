class Solution {
    func uncommonFromSentences(_ s1: String, _ s2: String) -> [String] {
        var arr = s1.components(separatedBy: " ") + s2.components(separatedBy: " ") 
        var dict: [String : Int] = Dictionary()
        

        for value in arr {
            if dict[value] == nil {
                dict[value] = 1
            } else {
                dict[value]! += 1
            }
        }
        arr = []
        for (key, value) in dict {
            if value == 1 {
                arr.append(key)
            }
        }
        return arr
    }
}