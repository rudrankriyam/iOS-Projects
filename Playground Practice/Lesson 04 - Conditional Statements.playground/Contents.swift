import UIKit

// Lesson 4 - Conditional Statements
// iOS 11 & Swift 4 - The Complete iOS App Development Bootcamp

func loveCalculator(yourName : String, theirName : String) -> String {
    
    let loveScore = arc4random_uniform(101)
    
    if loveScore > 80 {
        return "You love each other like Kany love Kanye"
    } else {
        return "No love possible, you will be forever alone!"
    }
}

loveCalculator(yourName: "Rudrank", theirName: "Swift")
