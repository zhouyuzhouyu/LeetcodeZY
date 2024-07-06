/*
 * @lc app=leetcode.cn id=169 lang=swift
 *
 * [169] 多数元素
 */

// @lc code=start
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var count = 0
        var candidate = 0
        for num in nums {
            if count == 0 {
                candidate = num
            }
            count += (num == candidate) ? 1 : -1
        }
        return candidate
    }
}
// @lc code=end

