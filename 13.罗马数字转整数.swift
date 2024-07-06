/*
 * @lc app=leetcode.cn id=13 lang=swift
 *
 * [13] 罗马数字转整数
 */

// @lc code=start
class Solution {
    let romanMap: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]

    func romanToInt(_ s: String) -> Int {
        let map = ["I" : 1, "V" : 5, "X" : 10, "L" : 50, "C" : 100, "D" : 500, "M" : 1000]
        var strs = Array(s)
        
        var ans = 0
        var n = strs.count
        for i in 0..<n {
            let value = map[String(strs[i])]!
            if i < n - 1 && value < map[String(strs[i+1])]! {
                ans -= value
            } else {
                ans += value
            }
        }
        
        return ans
    }
}
// @lc code=end

