/*
 * @lc app=leetcode.cn id=11 lang=swift
 *
 * [11] 盛最多水的容器
 */

// @lc code=start
class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maxArea = 0
        if height.count < 2 {
            return maxArea
        }
        var left = 0;
        var right = height.count - 1;
        while left < right {
            let area = (right - left) * min(height[left], height[right])
            maxArea = max(maxArea, area)
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return maxArea
        

    }
}
// @lc code=end

