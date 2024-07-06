/*
 * @lc app=leetcode.cn id=118 lang=swift
 *
 * [118] 杨辉三角
 */

// @lc code=start
class Solution {
    static var numsAll:[[Int]] = [[1], [1, 1], [1,2,1]]
    func generate(_ numRows: Int) -> [[Int]] {
        if numRows <= Solution.numsAll.count {
            return Array(Solution.numsAll[0..<numRows])
        }
        for i in Solution.numsAll.count..<numRows {
            var nums = [1]
            for j in 1..<i {
                nums.append(Solution.numsAll[i-1][j-1] + Solution.numsAll[i-1][j])
            }
            nums.append(1)
            Solution.numsAll.append(nums)
        }
        return Solution.numsAll
    }
}
// @lc code=end

