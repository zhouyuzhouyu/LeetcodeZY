/*
 * @lc app=leetcode.cn id=24 lang=swift
 *
 * [24] 两两交换链表中的节点
 */

// @lc code=start
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
        var head1 = ListNode(0, head)
        var left = head1.next
        var right = left?.next
        var pre = head1
        while left != nil && right != nil {
            left!.next = right!.next
            right!.next = left!
            pre.next = right!
            pre = left!
            left = pre.next
            right = left?.next
        }

        return head1.next

    }
}
// @lc code=end

