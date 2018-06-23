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

func someFunction(firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(firstParameterName: 1, secondParameterName: 2)

// Specifying Argument Labels

func someFunction(argumentLabel parameterName: Int) {
    // IN the function body, parameterName refers to the argument value for that parameter
}

func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)! Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))
// Prints "Hello Bill! Glad you could visit from Cupertino."

//Omitting Argument Labels

func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(1, secondParameterName: 2)

// Defulat Parameter Values

func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    // If you omt the second argument when calling this function, then
    // the value of parameterWithDefault is 12 inside the function body.
}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6)
// parameterWithDefauly is 6
someFunction(parameterWithoutDefault: 4)
// parameterWithDefault is 12

// Variadic Parameters

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// returns 3.0, which is the arithmetic mean of these five numbers
arithmeticMean(3, 8.25, 18.75)
// returns 10.0, which is the arithmetic mean of these three numbers

// A function may have AT MOST one variadic parameter

// In-Out Parameters

// In-out parameters cannot have default values, and variadic parameters cannot be marked as inout.
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// Prints "someInt is now 107, and anotherInt is now 3"

// Function Types

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

func printHelloWorld() {
    print("Hello, World!")
}

// Using Function Types

var mathFunction: (Int, Int) -> Int = addTwoInts

print("Result: \(mathFunction(2,3))")
// Prints "Result: 5"

mathFunction = multiplyTwoInts
print("Result: \(mathFunction(2,3))")
// Prints "Result: 6"

let anotherMathFunction = addTwoInts
// anotherMathFunction is inferred to be of type (Int, Int) -> Int

// Function Types as Parameter Types

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)
// Prints "Result: 8"

// Function Types as Return tpyes

func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepForward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the stepBackward() function

print("Counting to zero:")
// Counting to zero:
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("Zero!")
// 3...
// 2...
// 1...
// Zero!

// Nested Functions

func chooseStepFunctionNested(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackWard(input: Int) -> Int { return input - 1 }
    return backward ? stepBackWard : stepForward
}
var currentValueNested = -4
let moveNearerToZeroNested = chooseStepFunctionNested(backward: currentValue > 0)
// moveNearerToZero now refers to the neseted stepForward() function)

while currentValueNested != 0 {
    print("\(currentValueNested)... ")
    currentValueNested = moveNearerToZeroNested(currentValueNested)
}
print("Zero!")
// -4...
// -3...
// -2...
// -1...
// Zero!

