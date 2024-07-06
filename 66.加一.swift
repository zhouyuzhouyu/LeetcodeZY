/*
 * @lc app=leetcode.cn id=66 lang=swift
 *
 * [66] 加一
 */

// @lc code=start
class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        for i in (0..<digits.count).reversed() {
            digits[i] = (digits[i] + 1) % 10
            if digits[i] != 0 {
                return digits
            }
        }
        digits.insert(1, at: 0)
        return digits
    }
}
// @lc code=end

