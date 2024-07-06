/*
 * @lc app=leetcode.cn id=145 lang=swift
 *
 * [145] 二叉树的后序遍历
 */

// @lc code=start
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
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        var res = [Int]()

        func postorder(_ root: TreeNode?) {
            if root == nil {
                return
            }
            postorder(root?.left)
            postorder(root?.right)
            res.append(root!.val)

        }
        postorder(root)
        return res

    }
}
// @lc code=end

