/*
 * @lc app=leetcode.cn id=5 lang=swift
 *
 * [5] 最长回文子串
 */

// @lc code=start
class Solution {
    func longestPalindrome(_ s: String) -> String {
        if s.count < 2 {
            return s
        }
        var start = 0
        var maxLength = 1
        let chars = Array(s)
        for i in 0..<chars.count-1 {
            let odd = palindromPosition(chars, i, i)
            let even = palindromPosition(chars, i, i + 1)
            let max = odd.right - odd.left > even.right - even.left ? odd : even
            if max.right - max.left + 1 > maxLength {
                maxLength = max.right - max.left + 1
                start = max.left
            }
        }
        return String(chars[start..<start + maxLength])

    }

    func palindromPosition(_ s: [Character], _ left: Int, _ right: Int) -> (left: Int, right: Int) {
        if s[left] != s[right] {
            return (left, left)
        }

        var left = left
        var right = right
        while left >= 0 && right < s.count && s[left] == s[right] {
            left -= 1
            right += 1
        }
        return (left + 1, right - 1)
    }
}
// @lc code=end

