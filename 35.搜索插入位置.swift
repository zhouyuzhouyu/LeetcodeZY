/*
 * @lc app=leetcode.cn id=35 lang=swift
 *
 * [35] 搜索插入位置
 */

// @lc code=start
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var result = 0
        for i in 0..<nums.count {
            if nums[i] < target {
                result = i + 1
            } else {
                result = i
                break
            }
        }
        return result

    }
}
// @lc code=end

