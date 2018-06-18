import UIKit

// Lesson 6 - Loops
// iOS 11 & Swift 4 - The Complete iOS App Development Bootcamp

var sum = 0

let arrayOfNumbers = [1, 5, 3, 6, 2, 7, 23, 34, 21, 12]

for number in arrayOfNumbers {
    sum += number
}

print(sum)

for number in 1...10 {
    print(number)
}

for number in 1..<10 where number % 2 == 0 {
    print(number)
}
