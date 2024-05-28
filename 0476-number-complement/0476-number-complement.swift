class Solution {
    func findComplement(_ num: Int) -> Int {
       var bin = String(num, radix: 2)
       var ans = ""
       for char in bin {
           if char == "1" {
               ans += "0"
           } else {
               ans += "1"
           }
       }
        return Int(ans, radix: 2)!
    }
}