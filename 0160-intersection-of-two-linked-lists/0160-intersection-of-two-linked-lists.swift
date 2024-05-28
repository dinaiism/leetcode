/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        var a = headA
        var b = headB

        while a!.next != nil {
            a = a!.next
        }

        while b!.next != nil {
            b = b!.next
        }

        if (a === b) == false {
            return nil
        }
        
        a = headA
        b = headB
        
        if headA === headB {
            return headA
        }


        var ans: ListNode?
        while a != nil   {
            b = headB
            while b != nil {
                
                if a === b {
                    ans = a
                    while a != nil && b != nil {
                        if a === b {
                            a = a?.next
                            b = b?.next
                            continue
                        } else {
                            ans = nil
                            break
                        }
                    }

                } 
                b = b?.next
            }
            a = a?.next
        }
        return ans
    }
}