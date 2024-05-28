class Solution {

    func fact (_ x: Double) -> Double {
        if x == 0 {
            return 1
        } 
        return fact(x-1) * x
    }
    
    func din (_ a: Double, _ b: Double) -> [Double] {
        //print(a, b)
        var arr = Array<Double>()
        var h = a
        while h != b {                    
            h += 1
            arr.append(h)
           
        }
        
        return arr
    }
    
    func p (_ n: Double, _ dCount: Double) -> Double {        
       
        var eCount = n - dCount 
        var arr  = din(max(dCount, eCount), n)
        var c: Double = 1
       
        for value in arr {
            c *= value
        }
        
        print(min(eCount, dCount))
        return  c/fact(min(eCount, dCount))
    }
    //fact(n) / (fact(dCount)*fact(n - dCount))
    //c/fact(min(eCount, dCount))
     // 24 / 1 * 6. = 4

        
          

    func climbStairs(_ n: Int) -> Int {

        var m: Double = Double(n)/2 
        m = floor(m)
        var max = Int(m)
        var ans: Double = 1

        if n%2 == 0 {
            ans += 1
            max -= 1
        }

    

        if n <= 3 {
            return n
        }

        if n == 4 {
            return 5
        }

        ans += Double(n) - 1
    
  

        
          
            for i in 2...max  { 
                print(i)
            ans +=  p(Double(n) - Double(i), Double(i))
            }
        
        return Int(ans) 
    }
}






/*

        var m: Double = Double(n)/2
        m = floor(m)
        var max = Int(m)
        var ans = 1

        
       

        if n%2 == 0 {
            ans += 1
        }
      
            ans += fact(max+1)/(fact(max-1) * 2)
         
           

            if n > 4 {
            ans += n - 1
            }
      
        return ans

    }
}



2 - 2
3 - 3
4 - 5
5 - 8
6 - 13



1 1 1 1

2 2

1 2 1
2 1 1.       3! / 1! * 2!
1 1 2




1 1 1 1 1


2 2 1       3! / 1! * 2!
2 1 2 
1 2 2       

2 1 1 1
1 2 1 1.      4
1 1 2 1
1 1 1 2



1 1 1 1 1 1

2 2 2

2 2 1 1
1 1 2 2
2 1 1 2            4! / 2! * 2!
1 2 2 1
1 2 1 2
2 1 2 1

2 1 1 1 1
1 2 1 1 1        5
1 1 2 1 1
1 1 1 2 1
1 1 1 1 2



1 1 1 1 1 1 1

1 2 2 2


*/