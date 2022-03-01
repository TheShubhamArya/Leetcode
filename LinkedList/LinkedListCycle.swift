// 141. Linked list cycle
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
    func hasCycle(_ head: ListNode?) -> Bool {
        
        if head == nil {return false}
        
        var slow = head
        var fast = head?.next
        
        while slow !== fast {
            
            if fast == nil || fast?.next == nil {
                return false
            }
            
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        return true
    }
}
