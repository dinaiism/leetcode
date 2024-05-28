/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
            var arr = Array<Int>()
            var x = head
            var h: ListNode? 
            
            while x != nil {
                if x?.val != val {
                    arr.append(x!.val)
                }
                x = x?.next
            }

            if arr.count == 0 {
                return nil
            }

            arr.reverse()
          
            for i in 0...arr.count-1 {
                if i == 0 {
                   h = ListNode()
                   h?.val = arr[0] 
                } else {
                let newNode = ListNode(arr[i])
                newNode.next = h
                h = newNode
            }
            }
           
            return h
    }
}











      