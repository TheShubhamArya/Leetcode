// 101. Symmentric tree
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return traverse(root,root)
    }
    
    func traverse(_ t1: TreeNode?,_ t2: TreeNode?) -> Bool {
        
        if t1 == nil && t2 == nil {
            return true
        }
        
        if t1 == nil || t2 == nil {
            return false
        }
        
        if t1?.val != t2?.val {
            return false
        }
        
        return traverse(t1?.left,t2?.right) && traverse(t1?.right, t2?.left)
        
    }
}
