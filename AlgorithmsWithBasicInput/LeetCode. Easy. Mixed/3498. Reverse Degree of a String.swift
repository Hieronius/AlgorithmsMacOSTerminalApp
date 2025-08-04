import Foundation

// MARK: 3498. Reverse Degree of a String

class Solution {
	
	func reverseDegree(_ s: String) -> Int {
		
		var answer = 0
		
		let alphabet =  (UnicodeScalar("a").value...UnicodeScalar("z").value).compactMap {
			UnicodeScalar($0).map { Character($0) }
		}
		let reversedAlphabet = Array(String(alphabet.reversed()))
		
		for (index, char) in s.enumerated() {
			
			guard let position = reversedAlphabet.firstIndex(of: char) else { return 0 }
			print(position)
			let product = (index + 1) * (position + 1)
			
			answer += product
		}
		
		
		return answer
	}
}
