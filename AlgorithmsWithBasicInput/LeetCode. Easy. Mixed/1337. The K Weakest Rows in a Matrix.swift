//
//  1337. The K Weakest Rows in a Matrix.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 24.03.2025.
//

import Foundation

// MARK: 1337. The K Weakest Rows in a Matrix

let mat1 =
[[1,1,0,0,0],
 [1,1,1,1,0],
 [1,0,0,0,0],
 [1,1,0,0,0],
 [1,1,1,1,1]]
let k1 = 3

let mat2 =
[[1,0,0,0],
 [1,1,1,1],
 [1,0,0,0],
 [1,0,0,0]]

let k2 = 2

class Solution {

	// MARK: Time Complexity O(n) * O(m) * O(1) + O(m) * O(n) + O(n log n) = O(n * m) + O(n * m) + O(n log n) == O(n * m) + O(n log n)
	// MARK: Space Complexity O(n) + O(n) + O(n) + O(n) = O(n)
	// mat.count = n
	// mat[i].count = m

	func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {

		var hashTable: [Int: Int] = [:] // Space Complexity O(n)
		var answer: [Int] = [] // Space Complexity O(n)

		// Time Complexity O(n)
		for row in 0..<mat.count {

			// Time O(m) | Space O(n)
			let soldiers = mat[row].reduce(0, +)

			// Time O(1)
			hashTable[row] = soldiers
		}

		// Time O(n) * O(n) + O(n log n) | Space O(n)
		let array = Array(zip(hashTable.keys, hashTable.values)).sorted { first, second in

			// Time O(1)
			if first.1 == second.1 {
				return first.0 < second.0
			} else {
				return first.1 < second.1
			}
		}

		// Time O(k)
		for row in 0..<k {
			// Time O(k)
			answer.append(array[row].0)
		}

		return answer
	}
}

let solution = Solution()
print(solution.kWeakestRows(mat1, k1))
print(solution.kWeakestRows(mat2, k2))
