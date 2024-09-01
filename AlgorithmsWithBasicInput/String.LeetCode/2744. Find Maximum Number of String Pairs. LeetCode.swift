//
//  2744. Find Maximum Number of String Pairs. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 14.09.2023.
//

import Foundation

/*
 
 2744. Find Maximum Number of String Pairs
 
 You are given a 0-indexed array words consisting of distinct strings.

 The string words[i] can be paired with the string words[j] if:

 The string words[i] is equal to the reversed string of words[j].
 0 <= i < j < words.length.
 Return the maximum number of pairs that can be formed from the array words.

 Note that each string can belong in at most one pair.

  

 Example 1:

 Input: words = ["cd","ac","dc","ca","zz"]
 Output: 2
 Explanation: In this example, we can form 2 pair of strings in the following way:
 - We pair the 0th string with the 2nd string, as the reversed string of word[0] is "dc" and is equal to words[2].
 - We pair the 1st string with the 3rd string, as the reversed string of word[1] is "ca" and is equal to words[3].
 It can be proven that 2 is the maximum number of pairs that can be formed.
 Example 2:

 Input: words = ["ab","ba","cc"]
 Output: 1
 Explanation: In this example, we can form 1 pair of strings in the following way:
 - We pair the 0th string with the 1st string, as the reversed string of words[1] is "ab" and is equal to words[0].
 It can be proven that 1 is the maximum number of pairs that can be formed.
 Example 3:

 Input: words = ["aa","ab"]
 Output: 0
 Explanation: In this example, we are unable to form any pair of strings.
  

 Constraints:

 1 <= words.length <= 50
 words[i].length == 2
 words consists of distinct strings.
 words[i] contains only lowercase English letters.
 */
// 5 - array.count
// 0 - first
// 0, 1, 2, 3, 4 = array.count - 1

func maximumNumberOfStringPairs(_ words: [String]) -> Int {
    return words.count - Set(words.map(Set.init)).count
}

func maximumNumberOfStringPairs1(_ words: [String]) -> Int {
    var counter = 0
    var visited = Set<String>()
    
    for word in words {
        let reversedWord = String(word.reversed())
        if visited.contains(word) || visited.contains(reversedWord) {
            continue
        }
        if word != reversedWord && words.contains(reversedWord) {
            counter += 1
            visited.insert(word)
            visited.insert(reversedWord)
        }
    }
    return counter
}
