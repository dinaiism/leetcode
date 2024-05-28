class Solution {
    func findChampion(_ grid: [[Int]]) -> Int {
        var c = 0
        for i in 0...grid.count-2 {
            if grid[c][i+1] != 1 {
                c = i + 1
            }
       } 
       return c
    }
}
