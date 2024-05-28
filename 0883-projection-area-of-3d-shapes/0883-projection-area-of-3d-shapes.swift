class Solution {
    func projectionArea(_ grid: [[Int]]) -> Int {
        var ans = 0
        var c = grid[0].count
        var max: Int
        
        for i in 0...c-1 {

        max = 0

        for arr in grid {
            if arr[i] > max {
                max = arr[i]
            }
        }
        ans += max

        }



        for arr in grid {
            max = 0
            for value in arr {
                if value > max {
                    max = value
                }
                if value != 0 {
                    ans += 1
                }
            }
            ans += max
        }

        return ans

    }
}


        /*

        var arr = Array<Int>()
        var c = 0
        var a = 0
        for value in grid {
            c = value.count
            for v in value {
             arr.append(v)
           }
        }

        if c == 1 {
            return arr[0]*2 + 1 
        }

        if arr.count != c*c {
            for i in 1...c*c-arr.count {
                arr.append(0)
            }
        }

        for value in arr {
            if value != 0 {
                ans += 1
            }
        }
        
        a = arr[0]

        for i in 1...c {

        for i in 1...c {
            a = max(a, arr[i])
        }
        ans += a
        
        }

        ans += max(arr[0], arr[1]) + max(arr[2], arr[3])
      
        ans += max(arr[0], arr[2]) + max(arr[1], arr[3])
   
       return ans

    }
}
*/