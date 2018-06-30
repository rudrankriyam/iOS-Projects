// Basic Operators

import UIKit

// Terminology

// Assignment Operator

let b = 10
var a = 5
a = 5
// a is now equal to 10

let (x,y) = (1,2)
// x is equal to 1, and y is equal to 2

// Arithmetric Operators

1 + 2
5 - 3
2 * 3
10.0 / 2.5

"Hello, " + "World!"

// Remainder Operator

9 % 4 // equals 1
-9 % 4 // equals -1

// Unary Minus Operator

let three = 3
let minusThree = -three // minusThree equals -3
let plusThree = -minusThree // plusThree equals 3

// Unary Plus Operator

let minusSix = -6
let alsoMinusSix = +minusSix // alsoMinusSix equals -6

// Compound Assignment Operators

a = 1
a += 2
// a is now equal to 3

// Comparison Operators

1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1

let name = "world"
if name == "world" {
    print("Hello, World!")
} else {
    print("I'm sorry \(name), but I don't recognize you")
}

(1, "Zebra") < (2, "Apple")
(3, "Apple") < (3, "Bird")
(4, "Dog") == (4, "Dog")

("Blue", -1) < ("Purple", 1)
// ("Blue", false) < ("Purple", true) Error because < can't compare Boolean values

// Ternary Conditional Operator

let question = true
if question {
    // answer 1
} else {
    // answer2
}

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
// rowHeight is equal to 90

let contentHeightIfElse = 40
let hasHeaderIfElse = true
let rowHeightIfElse: Int
if hasHeaderIfElse {
    rowHeightIfElse = contentHeightIfElse + 50
} else {
    rowHeightIfElse = contentHeightIfElse + 20
}
// rowHeight is equal to 90

// Nil-Coalescing Operator

// a != nil ? a! : b

let defaultColorName = "Red"
