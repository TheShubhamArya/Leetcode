// 203. Remove Linked List Elements

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
        if head == nil {return head}
        var initialNode = ListNode(0)
        var current = initialNode
        var head = head
        
        while head != nil {
            let val2 = head?.val ?? 0
            if val != val2 {
                current.next = ListNode(val2)
                current = current.next!
            }
            head = head?.next
        }
        return initialNode.next
    }
}
