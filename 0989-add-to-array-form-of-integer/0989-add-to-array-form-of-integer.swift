class Solution {
    func addToArrayForm(_ num: [Int], _ k: Int) -> [Int] {
        var ans = num
        ans.reverse()
        var str = String(k)
        var arr = Array(repeating: 0, count: max(num.count, str.count))
        var l = str.count-1
        
        if ans.count < str.count {
            ans += Array(repeating: 0, count: str.count - ans.count)
        }

        for char in str {
            arr[l] = Int(String(char))!
            l -= 1
        }

        
        for i in 0...ans.count-1 {
            ans[i] = ans[i] + arr[i]
            if ans[i] > 9 && i != ans.count-1 {
                    ans[i+1] += 1
                    ans[i] -= 10 
                }
            }


        if ans[ans.count-1] > 9 {
            ans.append(1)
            ans[ans.count-2] -= 10
        }
        
      return ans.reversed()


    }
}





/*
        for value in ans {
           s = s + Double(value) * t
           t = t * 10
        }
        
        print(s)
        
        s = s + Double(k)
       
        
        str = "\(s)"
        
        ans = []

        for char in str {
            if let a = Int(String((char))) {
                ans.append(a)
            } else {
                return ans
            }
        }
    
    
    return ans
    }

}
*/