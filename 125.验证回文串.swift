/*
 * @lc app=leetcode.cn id=125 lang=swift
 *
 * [125] 验证回文串
 */

// @lc code=start
class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let s = s.lowercased().unicodeScalars.filter { 
            ($0>=Unicode.Scalar("a") && $0<=Unicode.Scalar("z")) 
            || ($0>=Unicode.Scalar("A") && $0<=Unicode.Scalar("Z"))
        || ($0>=Unicode.Scalar("0") && $0<=Unicode.Scalar("9"))}
        let str = String(String.UnicodeScalarView(s))
        return str == String(str.reversed())
    }
}
// @lc code=end

