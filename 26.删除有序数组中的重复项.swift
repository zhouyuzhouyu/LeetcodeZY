/*
 * @lc app=leetcode.cn id=26 lang=swift
 *
 * [26] 删除有序数组中的重复项
 */

// @lc code=start
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        
        var i = 0
        for j in 1..<nums.count {
            if nums[j] != nums[i] {
                i += 1
                nums[i] = nums[j]
            }

        }
        return i + 1

    }
}
// @lc code=end

