/*
 * @lc app=leetcode.cn id=67 lang=swift
 *
 * [67] 二进制求和
 */

// @lc code=start
class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var res = ""
        var carry = 0
        var i = a.count - 1
        var j = b.count - 1
        let a = Array(a)
        let b = Array(b)
        while i >= 0 || j >= 0 || carry > 0 {
            let sum = (i >= 0 ? Int(String(a[i]))! : 0) + (j >= 0 ? Int(String(b[j]))! : 0) + carry
            res = "\(sum % 2)" + res
            carry = sum / 2
            i -= 1
            j -= 1
        }
        return res
    }
}
// @lc code=end

