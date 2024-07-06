/*
 * @lc app=leetcode.cn id=40 lang=swift
 *
 * [40] 组合总和 II
 */

// @lc code=start
class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var res = [[Int]]()
        var path = [Int]()
        let candidates = candidates.sorted()
        dfs(candidates, target, 0, &res, &path)
        return res

    }
    func dfs(_ candidates: [Int], _ target: Int, _ begin: Int, _ res: inout [[Int]], _ path: inout [Int]) {
        if target == 0 {
            res.append(path)
            return
        }
        for i in begin..<candidates.count {
            if target - candidates[i] < 0 {
                break
            }
            if i > begin && candidates[i] == candidates[i - 1] {
                continue
            }
            path.append(candidates[i])
            dfs(candidates, target - candidates[i], i + 1, &res, &path)
            path.removeLast()
        }
    }
}
// @lc code=end

