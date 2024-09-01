//
//  1812. Determine Color of a Chessboard Square. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 16.09.2023.
//

import Foundation

/*
 1812. Determine Color of a Chessboard Square

 You are given coordinates, a string that represents the coordinates of a square of the chessboard. Below is a chessboard for your reference.



 Return true if the square is white, and false if the square is black.

 The coordinate will always represent a valid chessboard square. The coordinate will always have the letter first, and the number second.

  

 Example 1:

 Input: coordinates = "a1"
 Output: false
 Explanation: From the chessboard above, the square with coordinates "a1" is black, so return false.
 Example 2:

 Input: coordinates = "h3"
 Output: true
 Explanation: From the chessboard above, the square with coordinates "h3" is white, so return true.
 Example 3:

 Input: coordinates = "c7"
 Output: false
  

 Constraints:

 coordinates.length == 2
 'a' <= coordinates[0] <= 'h'
 '1' <= coordinates[1] <= '8'
 */
func squareIsWhite(_ coordinates: String) -> Bool {
    /// define an empty space for each of our sports on the board
    var grid = [[Bool]]()
    
    var flag = false
    /// we has exactly this amount of cells
    for _ in 0..<8 {
        /// current color of the cell
        var cur = [Bool]()
        for _ in 0..<8 {
            if flag {
                cur.append(true)
                flag.toggle()
            } else {
                cur.append(false)
                flag.toggle()
            }
        }
        grid.append(cur)
        flag.toggle()
    }
    let dict: [String: Int] = ["a": 0, "b": 1, "c": 2, "d": 3, "e": 4, "f": 5, "g": 6, "h": 7]
    let s1 = String(coordinates.first!)
    let s2 = coordinates.last!
    return grid[dict[s1]!][Int(String(s2))! - 1]
}
