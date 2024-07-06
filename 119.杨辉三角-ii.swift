/*
 * @lc app=leetcode.cn id=119 lang=swift
 *
 * [119] 杨辉三角 II
 */

// @lc code=start
class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        if rowIndex == 0 {
            return [1]
        }
        if rowIndex == 1 {
            return [1, 1]
        }
        var nums = getRow(rowIndex - 1)
        for i in (1..<nums.count).reversed() {
            nums[i] = nums[i] + nums[i - 1]
        }
        nums.append(1)
        return nums

    }
}
// @lc code=end

