//
//  DefangIPaddressLeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 06.09.2023.
//

import Foundation

/*
Given a valid (IPv4) IP address, return a defanged version of that IP address.

A defanged IP address replaces every period "." with "[.]".

 

Example 1:

Input: address = "1.1.1.1"
Output: "1[.]1[.]1[.]1"
Example 2:

Input: address = "255.100.50.0"
Output: "255[.]100[.]50[.]0"
 

Constraints:

The given address is a valid IPv4 address.

 */

func defangIPaddr(_ address: String) -> String {
    var internalArray = Array(address)
    var resultString = String()
    
    for char in internalArray {
        if char == "." {
            print("There you are")
            resultString.append("[.]")
        } else {
            print("Skip wrong char")
            resultString.append(char)
        }
    }
    
    return resultString
}

// print(defangIPaddr("255.100.50.0"))
