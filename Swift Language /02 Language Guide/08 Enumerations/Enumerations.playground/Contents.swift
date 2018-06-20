// Enumerations

import UIKit

// Enumeration Syntax

enum SomeEnumerations {
    // enumeration definition goes here
}

enum CompassPoint {
    case north
    case south
    case west
    case east
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToHead = CompassPoint.west

directionToHead = .east

// Matching Enumeration Values with a Switch Statement

directionToHead = .south

switch directionToHead {
case .north:
    print("Lots of planet have a north")
case .south:
    print("Watch out of penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}

