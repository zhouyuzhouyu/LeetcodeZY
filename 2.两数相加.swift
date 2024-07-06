/*
 * @lc app=leetcode.cn id=2 lang=swift
 *
 * [2] 两数相加
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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var result = ListNode(0)
        var p = l1, q = l2, curr = result
        var carry = 0
        while p != nil || q != nil {
            let x = p?.val ?? 0
            let y = q?.val ?? 0
            let sum = x + y + carry
            carry = sum / 10
            curr.next = ListNode(sum % 10)
            curr = curr.next!
            if p != nil {
                p = p?.next
            }
            if q != nil {
                q = q?.next
            }
        }
        if carry > 0 {
            curr.next = ListNode(carry)
        }
        return result.next

    }
}
// @lc code=end

