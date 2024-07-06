/*
 * @lc app=leetcode.cn id=110 lang=swift
 *
 * [110] 平衡二叉树
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
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }

        return abs(height(root!.left) - height(root!.right)) <= 1 && isBalanced(root!.left) && isBalanced(root!.right)
        

    }

    func height(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        return max(height(root!.left), height(root!.right)) + 1
    }
}
// @lc code=end

