class Solution {
    func sumOfEncryptedInt(_ nums: [Int]) -> Int {
        var sum = 0
        
    
        for value in nums {

            if value > 9 {
            var arr = Array<Int>()
            var str = String(value)
            var max = 0

            for char in str {
                arr.append(Int(String(char))!)
            }

            if arr.max()! > max {
                str = String(repeating: String(arr.max()!), count: str.count)
                max = Int(str)!
                print(max)
            }
            sum += max 
        } else {
            sum += value
        }
        
    }
    return sum
    }
}