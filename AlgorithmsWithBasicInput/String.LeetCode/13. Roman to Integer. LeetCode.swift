//
//  RomanianToIntLeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 05.09.2023.
//

import Foundation

/*
 
 13. Roman to Integer

 Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

 Symbol       Value
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000
 For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

 Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

 I can be placed before V (5) and X (10) to make 4 and 9.
 X can be placed before L (50) and C (100) to make 40 and 90.
 C can be placed before D (500) and M (1000) to make 400 and 900.
 Given a roman numeral, convert it to an integer.

  

 Example 1:

 Input: s = "III"
 Output: 3
 Explanation: III = 3.
 Example 2:

 Input: s = "LVIII"
 Output: 58
 Explanation: L = 50, V= 5, III = 3.
 Example 3:

 Input: s = "MCMXCIV"
 Output: 1994
 Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
  

 Constraints:

 1 <= s.length <= 15
 s contains only the characters ('I', 'V', 'X', 'L', 'C', 'D', 'M').
 It is guaranteed that s is a valid roman numeral in the range [1, 3999].
 */

func romanToInt1(_ s: String) -> Int {
    var index = 0
    var result = 0
    var stringAr = Array(s)
    
    while index < stringAr.count {
        let a = stringAr[index]
        let b = index + 1 < stringAr.count ? stringAr[index+1] : nil
        
        switch (a, b) {
        case ("I",_) where b != "V" && b != "X": result += 1; index += 1;
        case("I",_) where b == "V": result += 4; index += 2
        case("I",_) where b == "X": result += 9; index += 2
        case ("V",_): result += 5; index += 1
        case ("X",_) where b != "L" && b != "C": result += 10; index += 1
        case("X",_) where b == "L": result += 40; index += 2
        case("X",_) where b == "C": result += 90; index += 2
        case ("L",_): result += 50; index += 1
        case ("C",_) where b != "D" && b != "M": result += 100; index += 1
        case ("C",_) where b == "D": result += 400; index += 2
        case ("C",_) where b == "M": result += 900; index += 2
        case ("D",_): result += 500; index += 1
        case ("M",_): result += 1000; index += 1
        default: index += 1
        }
    }
    return result
}
