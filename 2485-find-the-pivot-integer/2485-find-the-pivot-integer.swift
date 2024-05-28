class Solution {

    func f1 (_ x: Int) -> Int {
        var t = x
        var ans = 0
        while t != 0 {
            ans += t
            t -= 1
        }
        return ans
    }

        func f2 (_ n: Int, _ x: Int) -> Int {
            var t = x
            var ans = 0
            while t != n + 1 {
                ans += t
                t += 1
            }
            return ans
        }

    func pivotInteger(_ n: Int) -> Int {
        for i in 1...n {
            if f1(i) == f2(n, i) {
                return i
            }
        }
        return -1
    }
}