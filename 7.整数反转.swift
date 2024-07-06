/*
 * @lc app=leetcode.cn id=7 lang=swift
 *
 * [7] 整数反转
 */

// @lc code=start
class Solution {
    func reverse(_ x: Int) -> Int {
        var flog = x < 0 ? -1 : 1
        var sX = String(x*flog)
        var result = Int(String(sX.reversed())) ?? 0
        if result > Int32.max {
            return 0
        }
        return result*flog

        
    }
}
// @lc code=end

