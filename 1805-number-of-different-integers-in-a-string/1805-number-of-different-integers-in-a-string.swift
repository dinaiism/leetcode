class Solution {
    func numDifferentIntegers(_ word: String) -> Int {
        var arr = Array(word)
        var str = ""
        var s = Set<String>()

        for value in arr {
                if value.isNumber {
                    str += String(value)
                }
                if value.isLetter && str != ""{
                    while str.hasPrefix("0") && str.count != 1 {
                        str.removeFirst()
                    }
                    s.insert(str)
                    str = ""
                }
        }
        
    
        if str != "" {
            while str.hasPrefix("0") && str.count != 1 {
                        str.removeFirst()
                    }
            s.insert(str)
        }
        

        return s.count
    }
}