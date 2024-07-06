/*
 * @lc app=leetcode.cn id=16 lang=swift
 *
 * [16] 最接近的三数之和
 */

// @lc code=start
class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        if nums.count < 3 {
            return 0
        }
        let nums = nums.sorted()
        var result = nums[0] + nums[1] + nums[2]
        for i in 0..<nums.count - 2 {
            var left = i + 1
            var right = nums.count - 1
            while left < right {
                let sum = nums[i] + nums[left] + nums[right]
                if abs(sum - target) < abs(result - target) {
                    result = sum
                }
                if sum < target {
                    left += 1
                } else if sum > target {
                    right -= 1
                } else {
                    return sum
                }
            }
        }
        return result

    }
}
// @lc code=end

