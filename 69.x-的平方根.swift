/*
 * @lc app=leetcode.cn id=69 lang=swift
 *
 * [69] x 的平方根 
 */

// @lc code=start
class Solution {
    func mySqrt(_ x: Int) -> Int {
        var l = 0, r = x, ans = -1
        while l <= r {
            let mid = (l + r) / 2
            if mid * mid <= x {
                ans = mid
                l = mid + 1
            } else {
                r = mid - 1
            }
        }
        return ans

    }
}
// @lc code=end

