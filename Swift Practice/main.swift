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

//print("I'm the Homework Wizard!")
//print("I can add, subtract, multiply, or divide any two numbers!")
//print("Do you want to use addition, subtraction, multiplication, or division? Type in your choice in all lowercase.")
//var operation = readLine()
//print("Enter a number.")
//let num1 = readLine()
//print("Enter a second number.")
//let num2 = readLine()
//
//guard let unwrappedOperation = operation
//    else {
//        exit(1)
//}
//guard let unwrappedNum1 = num1
//    else {
//        exit(1)
//}
//
//guard let unwrappedNum2 = num2
//    else {
//        exit(1)
//}
//
//if unwrappedOperation == "addition" {
//    print("The answer is \(Double(unwrappedNum1)! + Double(unwrappedNum2)!)!")
//}
//else if unwrappedOperation == "subtraction" {
//    print("The answer is \(Double(unwrappedNum1)! - Double(unwrappedNum2)!)!")
//}
//else if unwrappedOperation == "multiplication" {
//    print("The answer is \(Double(unwrappedNum1)! * Double(unwrappedNum2)!)!")
//}
//else if unwrappedOperation == "division" {
//    print("The answer is \(Double(unwrappedNum1)! / Double(unwrappedNum2)!)!")
//}

print("I'm the Dictionary With Only 10 Words!")
print("Type in one of these words to see its definition!")
print("dictionary, recursion, glossary, déjà vu, ambiguous, lamentation, forestall, clickbait, kerfuffle, gullible")
let word = readLine()

let dictionary = [
    "dictionary": "A resource that lists the words of a language (typically in alphabetical order) and gives the meanings of these words.",
    "recursion": "The repeatead application of a certain procedure or definition.",
    "glossary": "A resource that lists some words of a language (typically in alphabetical order) and gives the meanings of these words.",
    "déjà vu": "A feeling of having already experienced the present situation.",
    "ambiguous": "Open to more than one interpretation; having a double meaning.",
    "lamentation": "The passionate expression of grief or sorrow.",
    "forestall": "To prevent or obstruct an anticipated event or action by taking action ahead of time.",
    "clickbait": "Content whose main purpose is to draw people's attention and encourage them to click on a link.",
    "kerfuffle": "A commotion or fuss, especially one caused by conflicting views.",
    "gullible": "Do you think I'd really tell you?"
]

guard let unwrappedWord = word
    else {
        exit(1)
}

print(dictionary[unwrappedWord]!)
