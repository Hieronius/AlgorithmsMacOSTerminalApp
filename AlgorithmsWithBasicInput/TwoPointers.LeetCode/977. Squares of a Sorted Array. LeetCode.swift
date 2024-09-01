//
//  977. Squares of a Sorted Array. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 22.10.2023.
//

import Foundation

/*
 977. Squares of a Sorted Array

 Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.

  

 Example 1:

 Input: nums = [-4,-1,0,3,10]
 Output: [0,1,9,16,100]
 Explanation: After squaring, the array becomes [16,1,0,9,100].
 After sorting, it becomes [0,1,9,16,100].
 Example 2:

 Input: nums = [-7,-3,2,3,11]
 Output: [4,9,9,49,121]
  

 Constraints:

 1 <= nums.length <= 104
 -104 <= nums[i] <= 104
 nums is sorted in non-decreasing order.
 
 */

func sortedSquares(_ nums: [Int]) -> [Int] {
    
    // 1. Find a square of each of the elements
    var internalAr = [Int]()
    for number in nums {
        internalAr.append(number*number)
    }
    
    return mergedSort(internalAr)
}

func merged(_ left: [Int], _ right: [Int]) -> [Int] {
    // 1.
    var leftIndex = 0
    var rightIndex = 0
    
    // 2.
    var orderedArray: [Int] = []
    
    // Merging logic here!
    
    // 2.1
    while leftIndex < left.count && rightIndex < right.count {
        let leftElement = left[leftIndex]
        let rightElement = right[rightIndex]
        
        
        if leftElement < rightElement {
            orderedArray.append(leftElement)
            leftIndex += 1
        } else if leftElement > rightElement {
            orderedArray.append(rightElement)
            rightIndex += 1
        } else { // if both elemets are equal
            orderedArray.append(leftElement)
            leftIndex += 1
            orderedArray.append(rightElement)
            rightIndex += 1
        }
    }
    
    // 2.2
    while leftIndex < left.count {
        orderedArray.append(left[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < right.count {
        orderedArray.append(right[rightIndex])
        rightIndex += 1
    }
    
    return orderedArray
}

func mergedSort(_ array: [Int]) -> [Int] {
    // 1. Check if there a single element and return it because it's already sorted
    // It's a base case for any recursion functions
    guard array.count > 1 else { return array }
    
    // 2. Split an array into the small ones until you can't do it anymore
    // Recursion gives us ability to try split an array again and again until base case of recursion will drop us from the function
    let middleIndex = array.count / 2
    
    let leftArray = mergedSort(Array(array[0..<middleIndex]))
    let rightArray = mergedSort(Array(array[middleIndex..<array.count]))
    
    return merged(leftArray, rightArray)
}
