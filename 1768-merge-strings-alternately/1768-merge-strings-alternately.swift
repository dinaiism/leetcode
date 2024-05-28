class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {

            var arr1 = Array(word1)
            var arr2 = Array(word2)
            var ans = ""
            var h : [String.Element] = []
            var min = min(arr1.count, arr2.count) 
             
            
        for index in 0...(min*2 - 1) {
                h = index%2 == 0 ? arr1 : arr2
                ans += String(h[index/2])
            }

            if arr1.count != arr2.count {
                var max = max(arr1.count, arr2.count)
                var maxarr = max == arr1.count ? arr1 : arr2
                for index in min...max-1 {
                    ans += String(maxarr[index])
                }
            }
        
        return ans
    }
}