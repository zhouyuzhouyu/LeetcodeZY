/*
 * @lc app=leetcode.cn id=22 lang=swift
 *
 * [22] 括号生成
 */

// @lc code=start
class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        if n < 1 {
            return []
        }
        if n == 1 {
            return ["()"]
        }

        var result =  generateParenthesis(n-1);
        var resultC = Set<String>()
        for str in result {

            for i in 0...str.count {
                var str1 = str
                    str1.insert(contentsOf: "()", at: str1.index(str1.startIndex, offsetBy: i))
                    resultC.insert(str1)
            }
                
        }
        
        return Array(resultC)



    }
}
// @lc code=end

