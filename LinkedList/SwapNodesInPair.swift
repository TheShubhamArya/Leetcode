// 24. Swap nodes in pair
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
    func swapPairs(_ head: ListNode?) -> ListNode? {
        if head?.next == nil || head == nil {return head}
        
        var first = head
        var second = head?.next
        var l = ListNode(0)
        var current = l
        
        while second != nil {
        
            current.next = ListNode(second?.val ?? 0)
            current = current.next!
            current.next = ListNode(first?.val ?? 0)
            current = current.next!
            
            first = first?.next?.next
            second = second?.next?.next
            if second == nil && first != nil{
                current.next = ListNode(first?.val ?? 0)
                current = current.next!
            }
        }
        return l.next
    }
}
