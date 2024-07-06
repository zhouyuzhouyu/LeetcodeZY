/*
 * @lc app=leetcode.cn id=168 lang=swift
 *
 * [168] Excel表列名称
 */

// @lc code=start
class Solution {
    func convertToTitle(_ columnNumber: Int) -> String {
        var result = ""
        var columnNumber = columnNumber
        while columnNumber > 0 {
            columnNumber -= 1
            result = String(UnicodeScalar(UInt8(columnNumber % 26) + 65)) + result
            columnNumber /= 26
        }
        return result

    }
}
// @lc code=end

