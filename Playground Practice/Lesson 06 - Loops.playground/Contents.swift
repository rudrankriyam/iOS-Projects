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

func beerSong() -> String {
    var lyrics: String = ""
    for bottle in (2..<100).reversed() {
        let newLine: String = "\(bottle) bottles of beer on the wall, \(bottle) bottles of beer.\nTake one down and pass it around, \(bottle - 1) bottles of beer on the wall.\n"
        lyrics += newLine
    }
    return lyrics
}

print(beerSong())
print("1 bottle of beer on the wall, 1 bottle of beer.")
print("Take one down and pass it around, no more bottles of beer on the wall.\n")

print("No more bottles of beer on the wall, no more bottles of beer.")
print("Go to the store and buy some more, 99 bottles of beer on the wall.")
