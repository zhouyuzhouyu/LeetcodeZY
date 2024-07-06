/*
 * @lc app=leetcode.cn id=28 lang=swift
 *
 * [28] 找出字符串中第一个匹配项的下标
 */

// @lc code=start
class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        return haystack.firstRange(of: needle)?.lowerBound.utf16Offset(in: haystack) ?? -1
    }
}
// @lc code=end

