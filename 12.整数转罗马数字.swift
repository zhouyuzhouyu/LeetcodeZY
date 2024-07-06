/*
 * @lc app=leetcode.cn id=12 lang=swift
 *
 * [12] 整数转罗马数字
 */

// @lc code=start
class Solution {
    func intToRoman(_ num: Int) -> String {
        let values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        let symbols = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
        var result = ""
        var num = num
        for i in 0..<values.count {
            let value = values[i]
            let symbol = symbols[i]
            while num >= value {
                num -= value
                result += symbol
            }
            if num == 0 {
                break
            }
        }
        return result

    }
}
// @lc code=end

