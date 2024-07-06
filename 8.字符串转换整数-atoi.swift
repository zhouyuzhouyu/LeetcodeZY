/*
 * @lc app=leetcode.cn id=8 lang=swift
 *
 * [8] 字符串转换整数 (atoi)
 */

// @lc code=start
class Solution {
    func myAtoi(_ s: String) -> Int {
        var str = s.trimmingCharacters(in: .whitespaces)
        if str.count == 0 {
            return 0
        }
        var result = 0
        var isNegative = false
        var i = 0
        if str.first == "-" {
            isNegative = true
            i += 1
        } else if str.first == "+" {
            i += 1
        }
        while i < str.count {
            let c = str[str.index(str.startIndex, offsetBy: i)]
            if c < "0" || c > "9" {
                break
            }
            let num = Int32(String(c))!
            if result > (Int32.max - num) / 10 {
                return isNegative ? Int(Int32.min) : Int(Int32.max)
            }
            result = result * 10 + Int(num)
            i += 1
        }
        return isNegative ? -result : result
    }
        
}
// @lc code=end

