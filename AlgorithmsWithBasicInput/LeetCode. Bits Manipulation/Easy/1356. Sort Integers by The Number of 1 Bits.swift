//
//  1356. Sort Integers by The Number of 1 Bits.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 28.03.2025.
//

import Foundation

// MARK: 1356. Sort Integers by The Number of 1 Bits

let arr1 = [0,1,2,3,4,5,6,7,8]

class Solution {

	// MARK: Time Complexity O(n log n)
	// MARK: Space Complexity O(n)

	func sortByBits(_ arr: [Int]) -> [Int] {

		guard arr.count > 1 else { return arr }

		let midIndex = arr.count / 2

		let leftArray = sortByBits(Array(arr[0..<midIndex]))
		let rightArray = sortByBits(Array(arr[midIndex..<arr.count]))

		return merge(leftArray, rightArray)
	}

	func countSetBits(_ num: Int) -> Int {

		var counter = 0
		var temp = num

		while temp != 0 {

			temp &= temp - 1
			counter += 1
		}

		return counter
	}

	func merge(_ leftArray: [Int], _ rightArray: [Int]) -> [Int] {

		var leftIndex = 0
		var rightIndex = 0

		var orderedArray: [Int] = []

		while leftIndex < leftArray.count && rightIndex < rightArray.count {

			let leftElement = leftArray[leftIndex]
			let rightElement = rightArray[rightIndex]

			if countSetBits(leftElement) == countSetBits(rightElement) {

				if leftElement < rightElement {
					orderedArray.append(leftElement)
					leftIndex += 1

				} else if leftElement > rightElement {
					orderedArray.append(rightElement)
					rightIndex += 1

				} else if leftElement == rightElement {
					orderedArray.append(leftElement)
					leftIndex += 1
					orderedArray.append(rightElement)
					rightIndex += 1
				}

			} else if countSetBits(leftElement) < countSetBits(rightElement) {
				orderedArray.append(leftElement)
				leftIndex += 1

			} else if countSetBits(leftElement) > countSetBits(rightElement) {
				orderedArray.append(rightElement)
				rightIndex += 1

			}
		}

		while leftIndex < leftArray.count {

			let element = leftArray[leftIndex]
			orderedArray.append(element)
			leftIndex += 1
		}

		while rightIndex < rightArray.count {

			let element = rightArray[rightIndex]
			orderedArray.append(element)
			rightIndex += 1
		}

		return orderedArray
	}
}
