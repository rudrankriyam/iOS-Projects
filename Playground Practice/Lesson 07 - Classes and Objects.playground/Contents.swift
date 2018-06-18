import UIKit

// Lesson 7 - Classes and Objects
// iOS 11 & Swift 4 - The Complete iOS App Development Bootcamp

enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    var color : String = "Black"
    var numberOfSeats : Int = 5
    var typeOfCar : CarType = .Coupe
    
    init(customerChosenColor : String) {
        color = customerChosenColor
    }
}

let myCar = Car(customerChosenColor: "Red")

print(myCar.color)
print(myCar.numberOfSeats)
print(myCar.typeOfCar)
