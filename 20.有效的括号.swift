/*
 * @lc app=leetcode.cn id=20 lang=swift
 *
 * [20] 有效的括号
 */

// @lc code=start
class Solution {
    let map1: [Character: Int] = [
                "(": 1, ")": -1,
                "[": 2, "]": -2,
                "{": 3, "}": -3]


    func isValid(_ s: String) -> Bool {
        if s.count % 2 != 0   {
            return false
        }

        if s.count == 0 {
            return true
        }



        var sArr = Array(s)

        var stack = [Character]()
        
        for (i, item) in sArr.enumerated() {
            if stack.count == 0 {
                stack.append(item)
            } else {
                let last = stack.last!
                if map1[last]! + map1[item]! == 0 && map1[last]! > 0 {
                    stack.removeLast()
                } else {
                    stack.append(item)
                }
            }
        }
        return stack.count == 0

        

    }
}
// @lc code=end

