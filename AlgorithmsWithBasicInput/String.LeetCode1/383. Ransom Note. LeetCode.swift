//
//  383. Ransom Note. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 22.09.2023.
//

import Foundation

/*
 383. Ransom Note
 
 Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.
 
 Each letter in magazine can only be used once in ransomNote.
 
 
 
 Example 1:
 
 Input: ransomNote = "a", magazine = "b"
 Output: false
 Example 2:
 
 Input: ransomNote = "aa", magazine = "ab"
 Output: false
 Example 3:
 
 Input: ransomNote = "aa", magazine = "aab"
 Output: true
 
 
 Constraints:
 
 1 <= ransomNote.length, magazine.length <= 105
 ransomNote and magazine consist of lowercase English letters.
 */


func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    var copyMagazine = magazine
    
    for ran in ransomNote {
        if let index = copyMagazine.firstIndex(of: ran) {
            copyMagazine.remove(at: index)
        } else {
            return false
        }
    }
    
    return true
}
