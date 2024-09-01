//
//  500. Keyboard Row. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 20.09.2023.
//

import Foundation

/*
 
 500. Keyboard Row

 Given an array of strings words, return the words that can be typed using letters of the alphabet on only one row of American keyboard like the image below.

 In the American keyboard:

 the first row consists of the characters "qwertyuiop",
 the second row consists of the characters "asdfghjkl", and
 the third row consists of the characters "zxcvbnm".

  

 Example 1:

 Input: words = ["Hello","Alaska","Dad","Peace"]
 Output: ["Alaska","Dad"]
 Example 2:

 Input: words = ["omk"]
 Output: []
 Example 3:

 Input: words = ["adsdf","sfd"]
 Output: ["adsdf","sfd"]
  

 Constraints:

 1 <= words.length <= 20
 1 <= words[i].length <= 100
 words[i] consists of English letters (both lowercase and uppercase).
 */

func findWords(_ words: [String]) -> [String] {
    let row1 = Set("qwertyuiop")
    let row2 = Set("asdfghjkl")
    let row3 = Set("zxcvbnm")
    
    var matching: [String] = []
    for word in words {
        let set = Set(word.lowercased())
        if set.isSubset(of: row1) || set.isSubset(of: row2) || set.isSubset(of: row3) {
            matching.append(word)
        }
    }
    return matching
}
