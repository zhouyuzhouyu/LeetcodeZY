/*
 * @lc app=leetcode.cn id=171 lang=swift
 *
 * [171] Excel 表列序号
 */

// @lc code=start
class Solution {
    func titleToNumber(_ columnTitle: String) -> Int {
        var result = 0
        for char in columnTitle {
            result = result * 26 + Int(char.asciiValue! - 64)
        }
        return result

    }
}
// @lc code=end

