// readLine() reads input with  THEORETICAL O(n) speed.
// but if in our problem description we can see something like "two numbers separated by space" it's mean that EFFECTIVE or REAL speed will be constant O(1)
// If your algorithm contains a few steps with different O(n), O(1) or O(n2) the overall algorithm complexity will be the slowest one - O(n2). Like in army
// Still don't know how to measure a real speed of the algorithms such as a given on - 2sec
// DONT FORGET TO INCLUDE FOUNDATION. THIS ONLINE COMPILER SUCKS

// https://contest.yandex.ru/contest/3/finish/ - YandexContest for practice
/*
import Foundation
guard let input = readLine() else {
    print("wrong input")
    exit(1)
}

let numbers = input.components(separatedBy: " ").compactMap {Int($0)}

guard numbers.count == 2 else {
    print("wrong input")
    exit(1)
}

let result = numbers[0] + numbers[1]
print(result)
 */

// test commit 04.09.24
// test commit 05.09.24
