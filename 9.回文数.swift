/*
 * @lc app=leetcode.cn id=9 lang=swift
 *
 * [9] 回文数
 */

// @lc code=start
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        var nums: [Int] = []

        var temp = x
        while temp > 0 {
            nums.append(temp % 10)
            temp /= 10
        }

        for i in 0..<nums.count / 2 {
            if nums[i] != nums[nums.count - 1 - i] {
                return false
            }
        }
        return true


    }
    
}
// @lc code=end

