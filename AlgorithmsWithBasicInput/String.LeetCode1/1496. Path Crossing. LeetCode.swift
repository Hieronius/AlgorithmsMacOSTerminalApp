//
//  1496. Path Crossing. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 24.09.2023.
//

import Foundation

/*
 
 1496. Path Crossing
 
 Given a string path, where path[i] = 'N', 'S', 'E' or 'W', each representing moving one unit north, south, east, or west, respectively. You start at the origin (0, 0) on a 2D plane and walk on the path specified by path.

 Return true if the path crosses itself at any point, that is, if at any time you are on a location you have previously visited. Return false otherwise.

  

 Example 1:


 Input: path = "NES"
 Output: false
 Explanation: Notice that the path doesn't cross any point more than once.
 Example 2:


 Input: path = "NESWW"
 Output: true
 Explanation: Notice that the path visits the origin twice.
  

 Constraints:

 1 <= path.length <= 104
 path[i] is either 'N', 'S', 'E', or 'W'.
 */

func isPathCrossing(_ path: String) -> Bool {
    var coordinate = [0, 0]
    var coordinates = [coordinate]
    
    for direction in path {
        switch direction {
        case "N": coordinate[0] += 1
        case "E": coordinate[1] += 1
        case "S": coordinate[0] -= 1
        case "W": coordinate[1] -= 1
        default: break
        }
        coordinates.append(coordinate)
    }
    return !(coordinates.count == Set(coordinates).count)
}
    
