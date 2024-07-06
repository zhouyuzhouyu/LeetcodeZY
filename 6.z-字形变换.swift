/*
 * @lc app=leetcode.cn id=6 lang=swift
 *
 * [6] Z 字形变换
 */

// @lc code=start
class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        var cA = Array(s)
        if numRows == 1 {
            return s
        }
        var res = [String]()
        for _ in 0..<numRows {
            res.append("")
        }
        var i = 0
        var flag = -1
        for c in cA {
            res[i] += String(c)
            if i == 0 || i == numRows - 1 {
                flag = -flag
            }
            i += flag
        }

        return res.joined()


    }
}
// @lc code=end

