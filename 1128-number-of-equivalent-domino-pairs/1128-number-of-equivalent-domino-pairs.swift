class Solution {
    func numEquivDominoPairs(_ dominoes: [[Int]]) -> Int {
        var dict : [String : Int] = [ : ]
        var count = 0
        for array in dominoes {
            if dict[(String(array[0]) + String(array[1]))] != nil {
                dict[(String(array[0]) + String(array[1]))]! += 1
            } else if dict[(String(array[1]) + String(array[0]))] != nil {
                dict[(String(array[1]) + String(array[0]))]! += 1
            } else {
                dict[(String(array[0]) + String(array[1]))] = 1
            }
        }
      //  print("sss")
        for (key, value) in dict {
            if value > 1 {
                var k = value - 1
                while k != 0 {
                    count += k
                    k -= 1
                }
            }
            
        }
        return count
    }
}