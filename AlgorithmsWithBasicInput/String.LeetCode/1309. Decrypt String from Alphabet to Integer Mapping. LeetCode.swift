//
//  1309. Decrypt String from Alphabet to Integer Mapping. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 16.09.2023.
//

import Foundation

/*
 
 1309. Decrypt String from Alphabet to Integer Mapping

 You are given a string s formed by digits and '#'. We want to map s to English lowercase characters as follows:

 Characters ('a' to 'i') are represented by ('1' to '9') respectively.
 Characters ('j' to 'z') are represented by ('10#' to '26#') respectively.
 Return the string formed after mapping.

 The test cases are generated so that a unique mapping will always exist.

  

 Example 1:

 Input: s = "10#11#12"
 Output: "jkab"
 Explanation: "j" -> "10#" , "k" -> "11#" , "a" -> "1" , "b" -> "2".
 Example 2:

 Input: s = "1326#"
 Output: "acz"
  

 Constraints:

 1 <= s.length <= 1000
 s consists of digits and the '#' letter.
 s will be a valid string such that mapping is always possible.
 */

//var string = "10#11#12"
//var string1 = "1326#"

func freqAlphabets(_ s: String) -> String {
    let alphabet = (97...122).map({Character(UnicodeScalar($0))})
    var result = String()
    var stringArray = Array(s)
    var currentIndex = stringArray.count - 1
    
    while currentIndex >= 0 {
        if stringArray[currentIndex] == "#" {
            let positionOfTheChar = String(stringArray[currentIndex-2]) + String(stringArray[currentIndex-1])
            result.append(alphabet[Int(positionOfTheChar)! - 1])
            currentIndex -= 3
        } else if stringArray[currentIndex] != "#" {
            let positionOfTheChar = String(stringArray[currentIndex])
            result.append(alphabet[Int(positionOfTheChar)! - 1])
            currentIndex -= 1
        }
        
    }
    return String(result.reversed())
}

 // print(freqAlphabets(string))
// print(freqAlphabets(string1))
