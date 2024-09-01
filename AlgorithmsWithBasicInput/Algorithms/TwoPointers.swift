//
//  TwoPointers.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 13.09.2023.
//

import Foundation

/*
A[] = {10, 20, 35, 50, 75, 80}
X = =70
i = 0
j = 5

A[i] + A[j] = 10 + 80 = 90
Since A[i] + A[j] > X, j--
i = 0
j = 4

A[i] + A[j] = 10 + 75 = 85
Since A[i] + A[j] > X, j--
i = 0
j = 3

A[i] + A[j] = 10 + 50 = 60
Since A[i] + A[j] < X, i++
i = 1
j = 3
m
A[i] + A[j] = 20 + 50 = 70
Thus this signifies that Pair is Found.

*/

// var ar = [10, 20, 35, 50, 75, 80]

func getSumOfPairsOfElementsEqualToGivenNumber(number: Int, array: [Int]) -> (Int, Int) {
   var sortedInternalArray = array.sorted()
   var i = 0
   var j = sortedInternalArray.count - 1
   
   while sortedInternalArray[i] + sortedInternalArray[j] != number {
       if i == j {
           print("numbers wasn't founded")
           return (999, 999)
       } else if sortedInternalArray[i] + sortedInternalArray[j] > number {
           j -= 1
           print("let's move right pointer to the left")
       } else if sortedInternalArray[i] + sortedInternalArray[j] < number {
           i += 1
           print("let's move left pointer to the right")
       }
   }
   print((i, j))
   return (i, j)
}

// getSumOfPairsOfElementsEqualToGivenNumber(number: 103, array: ar)
