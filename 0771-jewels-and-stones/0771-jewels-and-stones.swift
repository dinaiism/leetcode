class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var s = Set<Character>()
        var count = 0
        for char in jewels {
            s.insert(char)
        }

        for char in stones {
            if s.contains(char) {
                count += 1
            }
        }
        return count
    }
}