class Solution {
    func validPalindrome(_ s: String) -> Bool {
    
    if s == String(s.reversed()) {
        return true
    }
    
    var arr = Array(s)
    while arr.count != 0 || arr.count != 1  {
        let a = arr.removeFirst()
        let b = arr.removeLast()
        if a != b {
            arr.insert(a, at: 0)
            guard arr != arr.reversed() else {return true} 
                arr.removeFirst()
                arr.append(b)
                guard arr != arr.reversed() else {return true}

        return false
   
    }
    }
    
    return true
    }
}


