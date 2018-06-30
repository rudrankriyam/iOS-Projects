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
var pi = 3.14159 // Inferred to be of type Double
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

// let cannotBeNegative: UInt8 = -1 // UInt 8 cannot store negative numbers, and so this will report an error
// let tooBig: Int8 = Int8.max + 1 // Int8 cannot store a number larger than its maximum value

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

// Integer and Floating-Point Conversion

let three = 3
let pointOneFourOneFiveNine = 0.14159
pi = Double(three) + pointOneFourOneFiveNine

let integerPi = Int(pi)

// Type Aliases

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
// maxAmplitudeFound is now 0

// Booleans

let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}

let i = 1

if i == 1 {
    // this example will compile successfully
}

// Tupeles

let http404Error = (404, "Not Found")
// http404Error is of type (int, String) and equals (404, "Not Found")

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// "Prints The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found"

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// "Prints The status code is 404"

print("The status code is \(http404Error.0)")
// "Prints The status code is 404"
print("The status message is \(http404Error.1)")
// Prints "The status message is Not Found"

let http200Status = (statusCode: 200, description: "OK")

print("The status code is \(http200Status.statusCode)")
// "Prints The status code is 200"
print("The status code is \(http200Status.description)")
// Prints "The status message is OK"

// Optionals

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber is inferred to be of type "Int?", or "optional Int"

// nil

var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value

var surveryAnswer: String?
// surveyAnswer is automatically set to nil

// If Statements and Forced Unwrapping

if convertedNumber != nil {
    print("convertedNumber contains some intger value.")
    print("convertedNumber has an integer value of \(convertedNumber!).")
}

// Optional Binding

if let actualNumber = Int(possibleNumber) {
    print("\"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("\"\(possibleNumber)\" could not be converted to an integer")
}

// Prints ""123" has an integer value of 123"

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// Prints "4 < 42 < 100"

if let firstNumberSecondWay = Int("4") {
    if let secondNumberSecondWay = Int("42") {
        if firstNumberSecondWay < secondNumberSecondWay && secondNumberSecondWay < 100 {
            print("\(firstNumberSecondWay) < \(secondNumberSecondWay) < 100")
        }
    }
}
// Prints "4 < 42 < 100"

// Implicitly Unwrapped Optionals

let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation mark

let assumedString: String! = "An implicity unwrapped optioinal string."
let implicitString: String = assumedString // no need for an exclamation mark

if assumedString != nil {
    print(assumedString!)
}
// Prints "An implicitly unwrapped optional string."

if let definiteString = assumedString {
    print(definiteString)
}
// Prints "An implicitly unwrapped optional string."

// Error Handling

func canThrowAnError() throws {
    // this function may or may not throw an error
}

do {
    try canThrowAnError()
    // no error was thrown
} catch {
    // an error was thrown
}

enum SandwichError {
    case outOfCleanDishes
    case missingIngredients()
}

func eatASandwich() {
    // ...
}

func washDishes() {
    // ...
}

func buyGroceries(_: String) {
    // ...
}

func makeASandwich() throws {
    // ...
}

do {
    try makeASandwich()
    eatASandwich()
} catch SandwichError.outOfCleanDishes {
    washDishes()
} catch SandwichError.missingIngredients(let ingredients) {
    buyGroceries(_: )
}

// Assertions and Preconditions

// assert(_:_:file:line:)

// Debugging with Assertions

let age = -3

assert(age >= 0, "A person's age can't be less than zero.")
// This assertion fails because -3 is not >=0

// assertionFailure(_:file:line:)

if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age > 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}

// Enforcing Preconditions

// In the implementation of a subscript...

let index = -1
precondition(index > 0, "Index must be greater than zero.")


