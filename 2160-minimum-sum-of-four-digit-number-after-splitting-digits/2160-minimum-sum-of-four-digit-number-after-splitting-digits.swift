class Solution {
    func minimumSum(_ num: Int) -> Int {
        var str = String(num)
        var arr = Array(str)
        arr.sort(by: {a, b in a < b})
        if arr[0] == "0" && arr[1] == "0" && arr[2] == "0" {
            return Int(String(arr[3]))!
        }

        if arr[0] == "0" && arr[1] == "0" {
            return Int(String(arr[2]))! + Int(String(arr[3]))!
        }
        
        if arr[0] == "0" {
            return Int(String(arr[1]) + String(arr[2]))! + Int(String(arr[3]))!
        } 

        return Int(String(arr[0]) + (String(arr[2])))! + Int(String(arr[1]) + (String(arr[3])))!
       
    }
}