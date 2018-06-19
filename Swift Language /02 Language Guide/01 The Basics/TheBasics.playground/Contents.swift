// The Basics

// Constants and Variables

// Declaring Constants and Variables

let maximumOfNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0

// Type Annotations

var welcomeMessage : String
welcomeMessage = "Hello"

var red, green, blue : Double

// Naming Constants and Variable

let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

let languageName = "Swift"
// languageName = "Swift++" compile-time error

// Printing Constants and Variables

print(friendlyWelcome)
print("The current value of friendlyWelcome is \(friendlyWelcome)")

// Comments

// This is a comment

/* This is also a comment,
but is written over multiple lines */

/* This is start of the first multiline comment.
 /* This is the second, nested multiline comment. */
 This is the end of the first multiline comment. */

// Semicolons

let cat = "🐱"; print(cat)

// Integers

// Integere Bounds

let minValue = UInt8.min // minValue is equal to 0, and is of type UInt 8
let maxValue = UInt8.max // maxValue is equal to 255, and is of type UInt 8

// Int Range from -2, 147, 483, 648 to 2, 147, 483, 647 on 32-bit platforms

// Floating-Point Numbers

// Type Safety and Type Inference

let meaningOfLife = 42 // Inferred to be of type Int
let pi = 3.14159 // Inferred to be of type Double
let anotherPi = 3 + 0.14159 // Also inferred to be of type Double

// Numeric Literal

let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// Numeric Type Conversion

// Integer Conversion

let cannotBeNegative: UInt8 = -1 // UInt 8 cannot store negative numbers, and so this will report an error
let tooBig: Int8 = Int8.max + 1 // Int8 cannot store a number larger than its maximum value


