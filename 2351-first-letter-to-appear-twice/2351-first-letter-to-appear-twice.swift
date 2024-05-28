class Solution {
    func repeatedCharacter(_ s: String) -> Character {
        var t = Set<Character>()
        for char in s {
            if t.contains(char) {
                return char
            }
            t.insert(char)
            }
        return "a"
    }
}