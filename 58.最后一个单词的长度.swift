/*
 * @lc app=leetcode.cn id=58 lang=swift
 *
 * [58] 最后一个单词的长度
 */

// @lc code=start
class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let words = s.split(separator: " ")
        return words.last?.count ?? 0
    }
}
// @lc code=end

