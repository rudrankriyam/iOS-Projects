//: Playground - noun: a place where people can play

// Lesson 3 - Functions
// iOS 11 & Swift 4 - The Complete iOS App Development Bootcamp

func getMilkPartOne() {
    print("Go to the shops")
    print("Buy 2 Cartons of milk")
    print("Pay $2")
    print("Come Home")
}
    
func getMilkPartTwo(howManyMilkCartons : Int) {
    
    let priceToPay = howManyMilkCartons * 2

    print("Go to the shop")
    print("Buy \(howManyMilkCartons) Cartons of milk")
    print("Pay $\(priceToPay)")
    print("Come Home")
}

func getMilkPartThree(howManyMilkCartons : Int, howMuchMoneyRobotWasGiven : Int) -> Int {

    let priceToPay = howManyMilkCartons * 2
    let change = howMuchMoneyRobotWasGiven - priceToPay
    
    print("Go to the shop")
    print("Buy \(howManyMilkCartons) Cartons of milk")
    print("Pay $\(priceToPay)")
    print("Come Home")

    return change
}

getMilkPartOne()
getMilkPartTwo(howManyMilkCartons: 4)

// Calling the getMilkPartThree() Function
var amountOfChange = getMilkPartThree(howManyMilkCartons: 4, howMuchMoneyRobotWasGiven: 10)

print("Hello Master, here is your $\(amountOfChange) change")
