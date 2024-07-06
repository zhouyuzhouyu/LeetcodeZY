/*
 * @lc app=leetcode.cn id=10 lang=swift
 *
 * [10] 正则表达式匹配
 */

// @lc code=start
class Solution {
    func isMatch(_ s: String, _ p: String) -> Bool {
        let s = Array(s)
        let p = Array(p)
        let m = s.count
        let n = p.count
        var dp = Array(repeating: Array(repeating: false, count: n + 1), count: m + 1)
        dp[0][0] = true
        for i in 0...m {
            for j in 1...n {
                if p[j - 1] == "*" {
                    dp[i][j] = dp[i][j - 2] || (i > 0 && (s[i - 1] == p[j - 2] || p[j - 2] == ".") && dp[i - 1][j])
                } else {
                    dp[i][j] = i > 0 && dp[i - 1][j - 1] && (s[i - 1] == p[j - 1] || p[j - 1] == ".")
                }
            }
        }
        return dp[m][n]


    }
}
// @lc code=end

