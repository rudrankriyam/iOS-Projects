import UIKit

// Lesson 5 - BMI Calculator Challenge
// iOS 11 & Swift 4 - The Complete iOS App Development Bootcamp

func calcBMI(weight : Float, height : Float) -> String {
    
    // Mass in kgs and Height in metres
    let bodyMassIndex = weight / pow(height, 2)
    //For a BMI which is rounded off to one decimal places.
    let shortenedBodyMassIndex = String(format: "%.1f", bodyMassIndex)
    var interpretation = ""
    
    if bodyMassIndex > 30 {
        interpretation = "You are Obese."
    } else if bodyMassIndex > 25 {
        interpretation = "You are Overweight."
    } else if bodyMassIndex > 18.5 {
        interpretation = "You are Normal."
    } else {
        interpretation = "You are underweight."
    }
    
    return "Your BMI is \(shortenedBodyMassIndex). \(interpretation)"
}

func bmiCalcImperialUnits(weightInPounds : Float, heightInFeet : Float, remainderInches : Float ) -> String {
    
    let weightInKg = weightInPounds * 0.4535
    let totalInches = (heightInFeet * 12) + remainderInches
    let heightInM = totalInches * 0.0254
    
    return calcBMI(weight: weightInKg, height: heightInM)
}

let caseOne = calcBMI(weight: 102, height: 1.79)
let caseTwo = bmiCalcImperialUnits(weightInPounds: 225, heightInFeet: 5, remainderInches: 10.5)

print(caseOne)
print(caseTwo)
