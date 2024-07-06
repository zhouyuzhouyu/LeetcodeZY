/*
 * @lc app=leetcode.cn id=19 lang=swift
 *
 * [19] 删除链表的倒数第 N 个结点
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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let head1 = ListNode(0)
        head1.next = head

        var left: ListNode? = head1
        var right: ListNode? = head1
        for i in 0..<n {
            right = right?.next
        }
        if right == nil {
            return head
        }

        while right?.next != nil {
            left = left?.next
            right = right?.next
        }

        left?.next = left?.next?.next


        return head1.next

    }
    
}
// @lc code=end

