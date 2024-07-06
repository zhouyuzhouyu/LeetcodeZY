/*
 * @lc app=leetcode.cn id=4 lang=swift
 *
 * [4] 寻找两个正序数组的中位数
 */

// @lc code=start
class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var numAll = nums1 + nums2
        numAll.sort()

        let count = numAll.count

        if count % 2 == 0 {
            return Double(numAll[count / 2] + numAll[count / 2 - 1]) / 2.0
        } else {
            return Double(numAll[count / 2])
        }
    }
}
// @lc code=end

