/*
 * @lc app=leetcode.cn id=190 lang=swift
 *
 * [190] 颠倒二进制位
 */

// @lc code=start
class Solution {
    func reverseBits(_ n: Int) -> Int {
        var res = 0
        var n = n
        for _ in 0..<32 {
            res = (res << 1) + (n & 1)
            n >>= 1
        }
        return res
        
    }
}
// @lc code=end

