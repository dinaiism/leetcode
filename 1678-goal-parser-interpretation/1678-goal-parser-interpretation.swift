class Solution {
    func interpret(_ command: String) -> String {
        var str = ""
        var arr = Array(command)
        for (index, value) in arr.enumerated() {
            if value == "G" {
                str.append("G")
                continue
            } 
            if value == "(" {
                arr[index + 1] == "a" ? str.append("al") : str.append("o")
            }  
        }
        return str
    }
}