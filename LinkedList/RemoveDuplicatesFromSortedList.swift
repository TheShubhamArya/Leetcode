// 83. Remove duplicates from sorted list

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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var temp = head
        
        while temp != nil && temp?.next != nil {
            if (temp?.val ?? 0) == (temp?.next?.val ?? 0) {
                temp?.next = temp?.next?.next
            } else {
                temp = temp?.next
            }
        }
        return head
    }
}
