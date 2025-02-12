import Foundation

// Speed O(n), Memory O(n)

class Solution {
	func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

		var hashTable: [Int: Int] = [:]
		var currentIndex = 0

		while currentIndex < nums.count {

			let compliment = target - nums[currentIndex]

			if hashTable.keys.contains(compliment) && hashTable[compliment]! != currentIndex {
				return [currentIndex, hashTable[compliment]!]
			} else {
				hashTable[nums[currentIndex]] = currentIndex
			}
			currentIndex += 1

		}
		return []
	}
}
