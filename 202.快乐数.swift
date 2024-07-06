/*
 * @lc app=leetcode.cn id=202 lang=swift
 *
 * [202] 快乐数
 */

// @lc code=start
class Solution {
    func isHappy(_ n: Int) -> Bool {
        var slow = n
        var fast = n
        repeat {
            slow = getNext(slow)
            fast = getNext(getNext(fast))
        } while slow != fast
        return slow == 1

    }
    func getNext(_ n: Int) -> Int {
        var n = n
        var sum = 0
        while n > 0 {
            let d = n % 10
            n /= 10
            sum += d * d
        }
        return sum
    }
}
// @lc code=end

