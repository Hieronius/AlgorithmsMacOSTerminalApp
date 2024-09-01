//
//  1154. Day of the Year. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 25.09.2023.
//

import Foundation

/*
 1154. Day of the Year

 Given a string date representing a Gregorian calendar date formatted as YYYY-MM-DD, return the day number of the year.

  

 Example 1:

 Input: date = "2019-01-09"
 Output: 9
 Explanation: Given date is the 9th day of the year in 2019.
 Example 2:

 Input: date = "2019-02-10"
 Output: 41
  

 Constraints:

 date.length == 10
 date[4] == date[7] == '-', and all other date[i]'s are digits
 date represents a calendar date between Jan 1st, 1900 and Dec 31th, 2019.
 
 */

func dayOfYear(_ date: String) -> Int {
    var days = [31,28,31,30,31,30,31,31,30,31,30,31]
           let date = date.split(separator: "-").map { Int($0)! }
           days[1] = date[0].isMultiple(of: 400) || (date[0].isMultiple(of: 4) && !date[0].isMultiple(of: 100)) ? 29 : 28
           return days[0..<date[1] - 1].reduce(0, +) + date[2]
}
