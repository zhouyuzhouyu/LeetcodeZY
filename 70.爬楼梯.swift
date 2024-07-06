/*
 * @lc app=leetcode.cn id=70 lang=swift
 *
 * [70] 爬楼梯
 */

// @lc code=start
class Solution {
    var map = [Int: Int]()


    func climbStairs(_ n: Int) -> Int {
        if n <= 1 {
            return 1
        }
        if n == 2 {
            return 2
        }

        if let result = map[n] {
            return result
        } else {
            map[n] = climbStairs(n - 1) + climbStairs(n - 2)
        }

        return map[n]!

    }
}
// @lc code=end

