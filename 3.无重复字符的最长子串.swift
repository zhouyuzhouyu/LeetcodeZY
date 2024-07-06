/*
 * @lc app=leetcode.cn id=3 lang=swift
 *
 * [3] 无重复字符的最长子串
 */

// @lc code=start
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var dict = [Character: Int]()
        var maxLen = 0
        var start = 0
        for (i, c) in s.enumerated() {
            if let index = dict[c] {
                start = max(start, index + 1)
            }
            dict[c] = i
            maxLen = max(maxLen, i - start + 1)
        }
        return maxLen

    }
}
// @lc code=end

