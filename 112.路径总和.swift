/*
 * @lc app=leetcode.cn id=112 lang=swift
 *
 * [112] 路径总和
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
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        if root == nil  {
            return false
        }

        if targetSum == root!.val && (root!.left == nil && root!.right == nil){
            return true;
        }

        return hasPathSum(root!.left, targetSum - root!.val) || hasPathSum(root!.right, targetSum - root!.val)

    }
}
// @lc code=end

