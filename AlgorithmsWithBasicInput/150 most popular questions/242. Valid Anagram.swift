import Foundation

class Solution {

	func isAnagram(_ s: String, _ t: String) -> Bool {

		guard s.count == t.count else { return false }

		let size = s.count

		let sArray = Array(s)
		let tArray = Array(t)

		var sDict: [Character: Int] = [:]
		var tDict: [Character: Int] = [:]

		for index in 0..<size {
			sDict[sArray[index], default: 0] += 1
			tDict[tArray[index], default: 0] += 1
		}


		return sDict == tDict
	}
}
