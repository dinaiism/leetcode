class Solution {
    func equalFrequency(_ word: String) -> Bool {
     var dict = [Character : Int]()
     for char in word {
         if dict[char] != nil {
             dict[char]! += 1
         } else {
             dict[char] = 1
         }
     }
   
     var a = dict.values.min()!
     var b = dict.values.max()!
     var countA = 0
     var countB = 0
     var k: Int
     var g = 0
  
     if dict.count == 1 || dict.count == 2 && a == 1 {return true}
     
    
     if a == b   { 
         if a == 2  {
             return false
         } 
         else {
         return true
         }
     }

     for value in dict.values {
        if value != a {
            guard value == b else { return false}
            countB += 1
        } else {
            countA += 1
        }
     }

     if countA < countB {
        k = b
    } else {
        k = a
    }
    
for value in dict.values {
    
   if value != k {
       g += 1
       if value - 1 != a && value - 1 != 0  {
           return false 
       }
   }
}

if g == 1 {return true} else {return false}
}
}

