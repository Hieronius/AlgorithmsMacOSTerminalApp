//
//  interpretLeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 07.09.2023.
//

import Foundation

/*
You own a Goal Parser that can interpret a string command. The command consists of an alphabet of "G", "()" and/or "(al)" in some order. The Goal Parser will interpret "G" as the string "G", "()" as the string "o", and "(al)" as the string "al". The interpreted strings are then concatenated in the original order.

Given the string command, return the Goal Parser's interpretation of command.

 

Example 1:

Input: command = "G()(al)"
Output: "Goal"
Explanation: The Goal Parser interprets the command as follows:
G -> G
() -> o
(al) -> al
The final concatenated result is "Goal".
Example 2:

Input: command = "G()()()()(al)"
Output: "Gooooal"
Example 3:

Input: command = "(al)G(al)()()G"
Output: "alGalooG"
 

Constraints:

1 <= command.length <= 100
command consists of "G", "()", and/or "(al)" in some order.
 */

func interpret(_ command: String) -> String {
    command.replacingOccurrences(of: "G", with: "G")
        .replacingOccurrences(of: "()", with: "o")
        .replacingOccurrences(of: "(al)", with: "al")
}

// print(interpret("(al)G(al)()()G"))
