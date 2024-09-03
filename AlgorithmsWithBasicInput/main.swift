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
