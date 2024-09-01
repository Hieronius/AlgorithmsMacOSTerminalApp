//
//  1844. Replace All Digits with Characters. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 15.09.2023.
//

import Foundation

/*
1844. Replace All Digits with Characters

 You are given a 0-indexed string s that has lowercase English letters in its even indices and digits in its odd indices.

 There is a function shift(c, x), where c is a character and x is a digit, that returns the xth character after c.

 For example, shift('a', 5) = 'f' and shift('x', 0) = 'x'.
 For every odd index i, you want to replace the digit s[i] with shift(s[i-1], s[i]).

 Return s after replacing all digits. It is guaranteed that shift(s[i-1], s[i]) will never exceed 'z'.

  

 Example 1:

 Input: s = "a1c1e1"
 Output: "abcdef"
 Explanation: The digits are replaced as follows:
 - s[1] -> shift('a',1) = 'b'
 - s[3] -> shift('c',1) = 'd'
 - s[5] -> shift('e',1) = 'f'
 Example 2:

 Input: s = "a1b2c3d4e"
 Output: "abbdcfdhe"
 Explanation: The digits are replaced as follows:
 - s[1] -> shift('a',1) = 'b'
 - s[3] -> shift('b',2) = 'd'
 - s[5] -> shift('c',3) = 'f'
 - s[7] -> shift('d',4) = 'h'
  

 Constraints:

 1 <= s.length <= 100
 s consists only of lowercase English letters and digits.
 shift(s[i-1], s[i]) <= 'z' for all odd indices i.

 var result = ""
 for s in str {
     if let ascii = s.asciiValue, ascii >= 65 && ascii <= 90 {
         result.append(Character(UnicodeScalar(ascii + 32)))
     } else {
         result.append(s)
     }
 }
 */

func replaceDigits(_ s: String) -> String {
    let alphabet = (97...122).map({Character(UnicodeScalar($0))})
            return s.reduce(into: "") {
            $0 += Int(String($1)) == nil
            ? String($1)
            : String(alphabet[alphabet.firstIndex(of: $0.last!)! + Int(String($1))!])
            }
}
// print(replaceDigits("a1c1e1"))
