/*
 * @lc app=leetcode.cn id=1 lang=swift
 *
 * [1] 两数之和
 */

// @lc code=start
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (index, num) in nums.enumerated() {
            if let lastIndex = dict[target - num] {
                return [lastIndex, index];
            } else {
                dict[num] = index;
            }
        }
        return [];
    }
}
// @lc code=end

