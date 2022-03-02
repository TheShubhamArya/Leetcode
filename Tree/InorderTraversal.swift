// 94. Binary Tree Inorder Traversal
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
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var output = [Int]()
        traversal(root,&output)
        return output
    }
    
    func traversal(_ root: TreeNode?,_ output: inout [Int]) {
        if root == nil {
            return
        }
        traversal(root?.left, &output)
        output.append(root!.val)
        traversal(root?.right, &output)
        
    }
}
