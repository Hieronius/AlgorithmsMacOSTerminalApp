import Foundation

class Solution {

	func isIsomorphic(_ s: String, _ t: String) -> Bool {

		let size = Set(s).count

		let sArray = Array(s)
		let tArray = Array(t)

		var originalDict: [Character: Character] = [:]
		var patternDict: [Character: Character] = [:]

		for index in 0..<s.count {

			if originalDict[sArray[index]] == nil {
				originalDict[sArray[index]] = tArray[index]
			} else if originalDict[sArray[index]] == tArray[index] {
				originalDict[sArray[index]] = tArray[index]
			} else if originalDict[sArray[index]] != tArray[index] {
				return false
			}

			if patternDict[tArray[index]] == nil {
				patternDict[tArray[index]] = sArray[index]
			} else if patternDict[tArray[index]] == sArray[index] {
				patternDict[tArray[index]] = sArray[index]
			} else if patternDict[tArray[index]] != sArray[index] {
				return false
			}
		}

		// Check if the number of unique mappings are the same
		return originalDict.keys.count == patternDict.keys.count && originalDict.keys.count == size
	}
}
