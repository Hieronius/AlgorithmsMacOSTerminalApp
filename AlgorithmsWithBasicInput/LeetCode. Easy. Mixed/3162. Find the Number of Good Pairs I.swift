import Foundation

// MARK: 3162. Find the Number of Good Pairs I

class Solution {
	func numberOfPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> Int {
		var counter = 0
		for first in nums1 {
			for second in nums2 {
				if first % (second * k) == 0 {
					counter += 1
				}
			}
		}
		return counter
	}
}
