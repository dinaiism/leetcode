class Solution {
    func sortByBits(_ arr: [Int]) -> [Int] {
        var dict : [Int : Int] = [ : ]
        var count = 0
        
        for value in arr {
            var str = (String (value, radix: 2))
            for char in str {
                if char == "1" {
                    count += 1
                }
            }
                dict[value] = count
                count = 0
            }
            return arr.sorted(by: { a, b in 
            if dict[a] == dict[b] {return a < b}
            return dict[a]! < dict[b]!
            })
        }

    }
