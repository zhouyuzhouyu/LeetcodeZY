/*
 * @lc app=leetcode.cn id=18 lang=swift
 *
 * [18] 四数之和
 */

// @lc code=start
class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
        if nums.count < 4 {
            return result
        }
        let nums = nums.sorted()
        for i in 0..<nums.count - 3 {
            if i > 0 && nums[i] == nums[i - 1] {
                continue
            }
            for j in i + 1..<nums.count - 2 {
                if j > i + 1 && nums[j] == nums[j - 1] {
                    continue
                }
                var left = j + 1
                var right = nums.count - 1
                while left < right {
                    let sum = nums[i] + nums[j] + nums[left] + nums[right]
                    if sum < target {
                        left += 1
                    } else if sum > target {
                        right -= 1
                    } else {
                        result.append([nums[i], nums[j], nums[left], nums[right]])
                        while left < right && nums[left] == nums[left + 1] {
                            left += 1
                        }
                        while left < right && nums[right] == nums[right - 1] {
                            right -= 1
                        }
                        left += 1
                        right -= 1
                    }
                }
            }
        }
        return result

    }
}
// @lc code=end

