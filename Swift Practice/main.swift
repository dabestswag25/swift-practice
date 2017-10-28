import Foundation

//var number:Int = 17
//var otherNumber: Double = 17
//let word: String = "hello"
//let boolean: Bool = 5 > 7
//var anotherNumber: Int
//
//anotherNumber = 73
//
//print(number)
//print(otherNumber)
//print(word)
//print(boolean)
//print(anotherNumber)

//var amountOfApples = 17
//print("I have \(amountOfApples + 5) apples.")

//var name:String? = "Preston"

//print("Enter your name.")
//
//let name = readLine()
//
//if let unwrappedName = name {
//    print("Hello, \(unwrappedName)!")
//}
//else {
//    print("Hello!")
//}

print("I'm the Homework Wizard!")
print("I can add any two numbers!")
print("Enter a number.")
let num1 = readLine()
print("Enter a second number.")
let num2 = readLine()

guard let unwrappedNum1 = num1
    else {
        exit(1)
}

guard let unwrappedNum2 = num2
    else {
        exit(1)
}

print("The answer is \(Double(unwrappedNum1)! + Double(unwrappedNum2)!)!")
