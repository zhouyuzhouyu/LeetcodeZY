/*
 * @lc app=leetcode.cn id=14 lang=swift
 *
 * [14] 最长公共前缀
 */

// @lc code=start
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var result = ""

        if strs.isEmpty {
            return result
        }

        if strs.count == 1 {
            return strs[0]
        }

        let first = strs[0]
        for i in 0..<first.count {
            var str1 = strs.filter({ str in 
                let start = first.index(first.startIndex, offsetBy: 0)
                let end = first.index(first.startIndex, offsetBy: i+1)
                return str.hasPrefix(first[start..<end])
            })

            if str1.count == strs.count {
                let start = first.index(first.startIndex, offsetBy: 0)
                let end = first.index(first.startIndex, offsetBy: i+1)
                result = String(first[start..<end])
            } else {
                break
            }


        }
        return result

        
    }

}
// @lc code=end

