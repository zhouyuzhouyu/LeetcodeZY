/*
 * @lc app=leetcode.cn id=191 lang=swift
 *
 * [191] 位1的个数
 */

// @lc code=start
class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var count = 0

        var n = n
        while n != 0 {
            if (n & 1) == 1 {
                count += 1
            }
            n >>= 1
        }

        return count

    }
}
// @lc code=end

