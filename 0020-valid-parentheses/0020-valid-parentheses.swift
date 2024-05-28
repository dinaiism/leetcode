class Solution {
    func isValid(_ s: String) -> Bool {
        var a = 0 
        var b = 0
        var c = 0
        var str = ""
        var dict : [Character : Character] = [")" : "(", "}" : "{", "]" : "["]
        for char in s {
            
            switch char {
                case "(": a += 1 
                
                
                case "[": b += 1
                
                case "{": c += 1
                
                case ")": a -= 1
              
                case "]": b -= 1
               
                case "}": c -= 1
              
                default: continue
            }
            if a < 0 || b < 0 || c < 0 {
                return false
            }
            str += String(char)
            
            if dict[str[str.index(before: str.endIndex)]] != nil {
           
                if  dict[str[str.index(before: str.endIndex)]]! == str[str.index(before: str.index(before: str.endIndex))] {
                    str.remove(at: str.index(before: str.endIndex))
                    str.remove(at: str.index(before: str.endIndex))
                } 
                else {
                    return false
                }

            } 
            
            
        }
        if a == 0 && b == 0 && c == 0 {
           
            return true
        } 
        
        return false
    }
}