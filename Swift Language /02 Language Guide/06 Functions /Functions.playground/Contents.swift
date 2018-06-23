// Functions

import UIKit

// Defining and Calling Functions

func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

print(greet(person: "Anna"))
// Prints "Hello, Anna!"
print(greet(person: "Brian"))
// Prints "Hello, Brian!"

func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}

print(greetAgain(person: "Anna"))
// Prints "Hello again, Anna!"

// Function Parameter and Return Values

// Functions Without Parameters

func sayHelloWorld() -> String {
    return "Hello, World!"
}

print(sayHelloWorld())
// Prints "Hello, World!"

// Functions With Multiple Parameters

func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}
print(greet(person: "Tim", alreadyGreeted: true))
// Prints "Hello again, Tim!"

// Functions Without Return Values

func greetVersionTwo(person: String) {
    print("Hello, \(person)!")
}
greetVersionTwo(person: "Dave")
// Prints "Hello, Dave!"

func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}
func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}
printAndCount(string: "Hello, World!")
// Prints "Hello, World!" and returns a value of 12
printWithoutCounting(string: "Hello, World!")
// Prints "Hello, World!" but does not return a value

// Functoins with Multiple Return Values

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return(currentMin, currentMax)
}

let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")
// Prints "min is -6 and max is 109"

// Optional Tuple Return Types

func minMaxSecondVersion(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return(currentMin, currentMax)
}

if let boundsSecondVersion = minMaxSecondVersion(array: [8, -6, 2, 109, 3, 71]) {
print("min is \(boundsSecondVersion.min) and max is \(boundsSecondVersion.max)")
}
// Prints "min is -6 and max is 109"

// Function Argument Labels and Parameter Names



