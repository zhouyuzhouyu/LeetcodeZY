/*
 * @lc app=leetcode.cn id=17 lang=swift
 *
 * [17] 电话号码的字母组合
 */

// @lc code=start
class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        if digits.isEmpty {
            return []
        }
        let dict: [Character: String] = ["2": "abc",
                                          "3": "def",
                                          "4": "ghi",
                                          "5": "jkl",
                                          "6": "mno",
                                          "7": "pqrs",
                                          "8": "tuv",
                                          "9": "wxyz"]
        var result = [String]()
        var path = ""
        backtrack(&result, &path, Array(digits), dict, 0)
        return result

    }
    func backtrack(_ result: inout [String], _ path: inout String, _ digits: [Character], _ dict: [Character: String], _ index: Int) {
        if path.count == digits.count {
            result.append(path)
            return
        }
        let digit = digits[index]
        let letters = dict[digit]!
        for letter in letters {
            path.append(letter)
            backtrack(&result, &path, digits, dict, index + 1)
            path.removeLast()
        }
    }
}
// @lc code=end

