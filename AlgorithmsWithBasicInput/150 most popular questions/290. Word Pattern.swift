import Foundation

class Solution {

	func wordPattern(_ pattern: String, _ s: String) -> Bool {

		let size = pattern.count
		let arrayOfS = s.split(separator: " ").map {String($0)}
		let patternAr = Array(pattern)

		guard size == arrayOfS.count else { return false }

		var bijectionPtoS: [Character: String] = [:]
		var bijectionStoP: [String: Character] = [:]


		for index in 0..<size {

			if bijectionPtoS[patternAr[index]] == nil || bijectionPtoS[patternAr[index]] == arrayOfS[index] {
				bijectionPtoS[patternAr[index]] = arrayOfS[index]

			} else {

				return false
			}

			if bijectionStoP[arrayOfS[index]] == nil || bijectionStoP[arrayOfS[index]] == patternAr[index] {
				bijectionStoP[arrayOfS[index]] = patternAr[index]

			} else {

				return false
			}



		}
		return true

	}
}
