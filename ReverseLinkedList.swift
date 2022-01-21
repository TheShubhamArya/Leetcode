// 206. Reverse linked list

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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var head = head
        var res : ListNode? = nil
        while head != nil {
            var next = head?.next // Saves the next node
            head?.next = res // assigns next nodde to previous node
            res = head // update previous node
            head = next // move to the next node
        }
        return res
    }
}
