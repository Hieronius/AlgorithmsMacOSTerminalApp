//
//  844. Backspace String Compare. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 26.09.2023.
//

import Foundation

/*
 844. Backspace String Compare

 Given two strings s and t, return true if they are equal when both are typed into empty text editors. '#' means a backspace character.

 Note that after backspacing an empty text, the text will continue empty.

  

 Example 1:

 Input: s = "ab#c", t = "ad#c"
 Output: true
 Explanation: Both s and t become "ac".
 Example 2:

 Input: s = "ab##", t = "c#d#"
 Output: true
 Explanation: Both s and t become "".
 Example 3:

 Input: s = "a#c", t = "b"
 Output: false
 Explanation: s becomes "c" while t becomes "b".
  

 Constraints:

 1 <= s.length, t.length <= 200
 s and t only contain lowercase letters and '#' characters.
  

 Follow up: Can you solve it in O(n) time and O(1) space?
 */

func backspaceCompare(_ s: String, _ t: String) -> Bool {
    var index = 0
    
    let internalS = Array(s)
    let internalT = Array(t)
    
    
    var resultOfS = ""
    var resultOfT = ""
    
    while index + 1 <= internalS.count {
        if (index + 1) == internalS.count {
            resultOfS.append(internalS[index])
            print("breakpoint 1")
            break
        } else if internalS[index] != "#" && internalS[index+1] != "#" {
            print("breakpoint 2")
            resultOfS.append(internalS[index])
            index += 1
        } else if internalS[index] != "#" && internalS[index+1] == "#" {
            print("breakpoint 3")
            index += 2
        }
    }
    
    index = 0
    
    while index + 1 <= internalT.count {
        if (index + 1) == internalT.count {
            resultOfT.append(internalT[index])
            print("breakpoint 1")
            break
        } else if internalT[index] != "#" && internalT[index+1] != "#" {
            print("breakpoint 2")
            resultOfT.append(internalT[index])
            index += 1
        } else if internalT[index] != "#" && internalT[index+1] == "#" {
            print("breakpoint 3")
            index += 2
        }
    }
    return resultOfS == resultOfT
}

func backspaceCompare1(_ s: String, _ t: String) -> Bool {
    handleString(s) == handleString(t)
  }
  
  func handleString(_ string: String) -> [Character] {
    var characters: [Character] = []
    
    for char in string {
      if char == "#" {
        if characters.isEmpty {
          characters = []
        } else {
          characters.removeLast()
        }
      } else {
        characters.append(char)
      }
    }
    
    return characters
  }
