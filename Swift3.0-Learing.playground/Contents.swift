//: Playground - noun: a place where people can play

import UIKit


var red, green, blue: Double

let arrOne = ["Tony", "Kimmi", "Jack", "Aaron"]
let arrTwo = [1, 2, 3, 4]

print(arrTwo, separator: "||||||||", terminator: " \n ====================")

print(arrOne)

print("The current is \(arrOne)")

let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.max

let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
let (justStatusCode, _) = http404Error

let http2005Status = (statusCode: 200, description: "OK")

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber);
print(http2005Status)

if let number = convertedNumber {
    print(number)
}

var serverResponseCode: Int? = 404
serverResponseCode = nil

if var err = serverResponseCode {
    err = 505
}

var surveyAnswer: String?
print(surveyAnswer)

//  The primary use of implicitly unwrapped optionals in Swift is during class initialization

let assumedString: String! = "An implicitly unwrapped optional string."
let  implicitString = assumedString

// Assertions help you find mistakes and incorrect assumptions during development, and preconditions help you detect issues in production.

let age = 2
//assert(age > 3, "A child's age must more than two")
//assert(age > 3)

if age > 3 {
    print("Normal age")
    fatalError("what this")
} else {
//    assertionFailure("mush large than three years old")
}

let minusSix = -6


// The Swift standard library includes tuple comparison operators for tuples with fewer than seven elements. To compare tuples with seven or more elements, you must implement the comparison operators yourself.

// Nil-Coalescing Operator

let defaultColorName = "red"
var userDefinedColorName: String?
var colorNameToUse = userDefinedColorName ?? defaultColorName

for _ in 1...5 {
    
}

for index in 0..<4 {
    
}

/* Swift4.0
// A multiline string literal is a sequence of characters surrounded by three double quotes:
let quotation = """

The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."

"""


let threeDoubleQuotes = """
Escaping the first quote \"""
Escaping all three quotes \"\"\"
"""
*/

// literal to a variable, or initialize a new String instance with initializer syntax:

var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax
// these two strings are both empty, and are equivalent to each other
// Find out whether a String value is empty by checking its Boolean isEmpty property:
    
    if emptyString.isEmpty && anotherEmptyString.isEmpty {
    print("Nothing to see here")
}
// Prints "Nothing to see here"

//for character in "Dog!🐶" {
//    print(character)
//}
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// Prints "Cat!🐱"
var welcome = "hello there"
let exclamationMark: Character = "!"
welcome.append(exclamationMark)
// welcome now equals "hello there!"
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496

var hello = "hello"
hello.insert("!", at: hello.endIndex)

//hello.insert(contentsOf: " there", at: hello.index(before: hello.endIndex))

hello.remove(at: hello.index(before: hello.endIndex))

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
// welcome now equals "hello"

// You can use the the insert(_:at:), insert(contentsOf:at:), remove(at:), and removeSubrange(_:) methods on any type that conforms to the RangeReplaceableCollection protocol. This includes String, as shown here, as well as collection types such as Array, Dictionary, and Set.

// Unicode Representations of Strings
let dogString = "Dog‼🐶"

for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("")
// Prints "68 111 103 226 128 188 240 159 144 182 "

for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print("")
// Prints "68 111 103 8252 55357 56374 "

for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator: "")
}
print("")
// Prints "68 111 103 8252 128054 "

for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}
// D
// o
// g
// ‼
// 🐶

var threeDoubles = Array(repeatElement(0.0, count: 3))
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles
// sixDoubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]
class Person {
    var name: String?
    var age: Int?
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted() // 并集
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted() // 交集
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9] a中剔除b中的元素
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9] a和b并集剔除共同的元素


/*
 Use the “is equal” operator (==) to determine whether two sets contain all of the same values.
 Use the isSubset(of:) method to determine whether all of the values of a set are contained in the specified set.
 Use the isSuperset(of:) method to determine whether a set contains all of the values in a specified set.
 Use the isStrictSubset(of:) or isStrictSuperset(of:) methods to determine whether a set is a subset or superset, but not equal to, a specified set.
 Use the isDisjoint(with:) method to determine whether two sets have no values in common.
 */
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true

/* Control Flow */
let minutes = 60
let minuteInterval = 5
for tickMask in stride(from: 0, to: minutes, by: minuteInterval) {
   // render the tick mark every 5 minutes (0, 5, 10, 15 ... 45, 50, 55)
}

// Closed ranges are also available, by using stride(from:through:by:) instead:

let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    // render the tick mark every 3 hours (3, 6, 9, 12)
}

// While
/*
     while condition {
        statements
     }
 */

// Repeat-While: The repeat-while loop in Swift is analogous to a do-while loop in other languages.
/*
     repeat {
        statements
     } while condition
 */


// Tuples: You can use tuples to test multiple values in the same switch statement.
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}
// Prints "(1, 1) is inside the box"

// Value Bindings
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}
// Prints "on the x-axis with an x value of 2"

// Where: A switch case can use a where clause to check for additional conditions.
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

// Prints "(1, -1) is on the line x == -y"


// Control Transfer Statements
/*
 1. Continue
 
 The continue statement tells a loop to stop what it is doing and start again at the beginning of the next iteration through the loop. It says “I am done with the current loop iteration” without leaving the loop altogether.
 
 2.Break
 
 The break statement ends execution of an entire control flow statement immediately. The break statement can be used inside a switch or loop statement when you want to terminate the execution of the switch or loop statement earlier than would otherwise be the case.
 
 3. Fallthrough
 
 In Swift, switch statements don’t fall through the bottom of each case and into the next one. That is, the entire switch statement completes its execution as soon as the first matching case is completed. By contrast, C requires you to insert an explicit break statement at the end of every switch case to prevent fallthrough. Avoiding default fallthrough means that Swift switch statements are much more concise and predictable than their counterparts in C, and thus they avoid executing multiple switch cases by mistake.
 */
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
case 4, 6:
    description += " a odd"
    fallthrough
default:
    description += " an integer."
}
print(description)

// Labeled Statements
/*
     label name: while condition {
        statements
     }
 */

// Example

let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0

gameLoop: while square != finalSquare {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    switch square + diceRoll {
    case finalSquare:
        // diceRoll will move us to the final square, so the game is over
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        // diceRoll will move us beyond the final square, so roll again
        continue gameLoop
    default:
        // this is a valid move, so find out its effect
        square += diceRoll
        square += board[square]
    }
}

// Checking API Availability

if #available(iOS 10, macOS 10.12, *) {
    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
} else {
    // Fall back to earlier iOS and macOS APIs
}

/* Functions */

// Optional Tuple Return Types
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

// Variadic Parameters

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// returns 3.0, which is the arithmetic mean of these five numbers
arithmeticMean(3, 8.25, 18.75)
// returns 10.0, which is the arithmetic mean of these three numbers

// Note: A function may have at most on variadic parameter.


// In-Out Parameters: In-out parameters cannot have default values, and variadic parameters cannot be marked as inout.
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// Prints "someInt is now 107, and anotherInt is now 3"


/* Closures */
let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]
let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}

// Escaping Closures ???????????  
// Autoclosures ??????????????

/* Enumerations */
// Recursive Enumerations ????????????

/* Classes and Structures */
/*
 Choosing Between Classes and Structures
 
 You can use both classes and structures to define custom data types to use as the building blocks of your program’s code.
 
 However, structure instances are always passed by value, and class instances are always passed by reference. This means that they are suited to different kinds of tasks. As you consider the data constructs and functionality that you need for a project, decide whether each data construct should be defined as a class or as a structure.
 
 As a general guideline, consider creating a structure when one or more of these conditions apply:
 
 The structure’s primary purpose is to encapsulate a few relatively simple data values.
 It is reasonable to expect that the encapsulated values will be copied rather than referenced when you assign or pass around an instance of that structure.
 Any properties stored by the structure are themselves value types, which would also be expected to be copied rather than referenced.
 The structure does not need to inherit properties or behavior from another existing type.
 Examples of good candidates for structures include:
 
 The size of a geometric shape, perhaps encapsulating a width property and a height property, both of type Double.
 A way to refer to ranges within a series, perhaps encapsulating a start property and a length property, both of type Int.
 A point in a 3D coordinate system, perhaps encapsulating x, y and z properties, each of type Double.
 In all other cases, define a class, and create instances of that class to be managed and passed by reference. In practice, this means that most custom data constructs should be classes, not structures.
 */



/* Properties */
/*
 Stored Properties of Constant Structure Instances
 
 If you create an instance of a structure and assign that instance to a constant, you cannot modify the instance’s properties, even if they were declared as variable properties:
 
 let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
 // this range represents integer values 0, 1, 2, and 3
 rangeOfFourItems.firstValue = 6
 // this will report an error, even though firstValue is a variable property
 Because rangeOfFourItems is declared as a constant (with the let keyword), it is not possible to change its firstValue property, even though firstValue is a variable property.
 
 This behavior is due to structures being value types. When an instance of a value type is marked as a constant, so are all of its properties.
 
 The same is not true for classes, which are reference types. If you assign an instance of a reference type to a constant, you can still change that instance’s variable properties.

 */

/*
 Stored Properties and Instance Variables
 
 If you have experience with Objective-C, you may know that it provides two ways to store values and references as part of a class instance. In addition to properties, you can use instance variables as a backing store for the values stored in a property.
 
 Swift unifies these concepts into a single property declaration. A Swift property does not have a corresponding instance variable, and the backing store for a property is not accessed directly. This approach avoids confusion about how the value is accessed in different contexts and simplifies the property’s declaration into a single, definitive statement. All information about the property—including its name, type, and memory management characteristics—is defined in a single location as part of the type’s definition.
 
 */
/*
 Property Observers
 
 Property observers observe and respond to changes in a property’s value. Property observers are called every time a property’s value is set, even if the new value is the same as the property’s current value.
 
 You can add property observers to any stored properties you define, except for lazy stored properties. You can also add property observers to any inherited property (whether stored or computed) by overriding the property within a subclass. You don’t need to define property observers for nonoverridden computed properties, because you can observe and respond to changes to their value in the computed property’s setter. Property overriding is described in Overriding.
 
 NOTE:
 The willSet and didSet observers of superclass properties are called when a property is set in a subclass initializer, after the superclass initializer has been called. They are not called while a class is setting its own properties, before the superclass initializer has been called.
 
 NOTE:
 If you pass a property that has observers to a function as an in-out parameter, the willSet and didSet observers are always called. This is because of the copy-in copy-out memory model for in-out parameters: The value is always written back to the property at the end of the function. For a detailed discussion of the behavior of in-out parameters, see In-Out Parameters.
 */

struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}
enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 6
    }
}
class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    class var overrideableComputedTypeProperty: Int { // can be override by subclass
        return 107
    }
}

/*
 NOTE:
 
 The computed type property examples above are for read-only computed type properties, but you can also define read-write computed type properties with the same syntax as for computed instance properties.
 
 */

/* Methods */

// keyword "mutating" allows to change self's property
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var originPoint = Point(x: 1.0, y: 1.0)
originPoint.moveBy(x: 2.0, y: 3.0)

// Attributes:  @discardableResult ????????



