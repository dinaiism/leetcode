class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        var countSub = 0
        var l = 0
        var r = l
        for char in s {
        if char == "L" {
             l += 1 
        }
        else {
             r += 1
        }
        if l == r {
            countSub += 1
        }
        }
        return countSub == 0 ? 1 : countSub
    }
}