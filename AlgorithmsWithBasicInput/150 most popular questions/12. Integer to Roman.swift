//
//  12. Integer to Roman.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 06.01.2025.
//

import Foundation

let test1 = 3749
let test2 = 58
let test3 = 1994
let test4 = 60

class Solution {

	func intToRoman(_ num: Int) -> String {

		var temp = num

		var firstNum = 0
		var secondNum = 0
		var thirdNum = 0

		if (temp / 1000) >= 1 { // yes
			firstNum = (temp / 1000) * 1000 // 3000
			temp -= firstNum
		}

		if (temp / 100) >= 1 {
			secondNum = (temp / 100) * 100
			temp -= secondNum
		}

		if (temp / 10) >= 1 {
			thirdNum = (temp / 10) * 10
			temp -= thirdNum
		}

		let answer = "" +
		checkNum(firstNum) +
		checkNum(secondNum) +
		checkNum(thirdNum) +
		checkNum(temp)


		return answer
	}

	func checkNum(_ num: Int) -> String {

		switch num {

		case 0: return ""
		case 1: return "I"
		case 2: return "II"
		case 3: return "III"
		case 4: return "IV"
		case 5: return "V"
		case 6: return "VI"
		case 7: return "VII"
		case 8: return "VIII"
		case 9: return "IX"
		case 10: return "X"
		case 20: return "XX"
		case 30: return "XXX"
		case 40: return "XL"
		case 50: return "L"
		case 60: return "LX"
		case 70: return "LXX"
		case 80: return "LXXX"
		case 90: return "XC"
		case 100: return "C"
		case 200: return "CC"
		case 300: return "CCC"
		case 400: return "CD"
		case 500: return "D"
		case 600: return "DC"
		case 700: return "DCC"
		case 800: return "DCCC"
		case 900: return "CM"
		case 1000: return "M"
		case 2000: return "MM"
		case 3000: return "MMM"

		default: return ""
		}
	}
}

