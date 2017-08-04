// Playground - noun: a place where people can play

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
    print(err)
}

var surveyAnswer: String?

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

for _ in 0..<4 {
    
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
    print(tickMask)
   // render the tick mark every 5 minutes (0, 5, 10, 15 ... 45, 50, 55)
}

// Closed ranges are also available, by using stride(from:through:by:) instead:

let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    print(tickMark)
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

/* Inheritance */
/*
 NOTE
 
 If you provide a setter as part of a property override, you must also provide a getter for that override. If you don’t want to modify the inherited property’s value within the overriding getter, you can simply pass through the inherited value by returning super.someProperty from the getter, where someProperty is the name of the property you are overriding.
 
 
 NOTE
 
 You cannot add property observers to inherited constant stored properties or inherited read-only computed properties. The value of these properties cannot be set, and so it is not appropriate to provide a willSet or didSet implementation as part of an override.
 
 Note also that you cannot provide both an overriding setter and an overriding property observer for the same property. If you want to observe changes to a property’s value, and you are already providing a custom setter for that property, you can simply observe any value changes from within the custom setter.
 */


/* Initialization */
/*
 
 NOTE
 
 When you assign a default value to a stored property, or set its initial value within an initializer, the value of that property is set directly, without calling any property observers.
 
 */

class SurveyQuestion {
    let text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let beetsQuestion = SurveyQuestion(text: "How about beets?")
beetsQuestion.ask()
// Prints "How about beets?"
beetsQuestion.response = "I also like beets. (But not with cheese.)"

/* Initializer Delegation for Value Types 值类型构造器
 NOTE
 
 If you want your custom value type to be initializable with the default initializer and memberwise initializer, and also with your own custom initializers, write your custom initializers in an extension rather than as part of the value type’s original implementation. For more information, see Extensions.
 假如你希望默认构造器、逐一成员构造器以及你自己的自定义构造器都能用来创建实例，可以将自定义的构造器写到扩展（extension）中，而不是写在值类型的原始定义中。想查看更多内容，请查看扩展章节。
 */

// Below two initial ways are same.
/*
struct Size {
    var width = 0.0, height = 0.0
}
struct Points {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Points()
    var size = Size()
    init() {}
    init(origin: Points, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Points, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Points(x: originX, y: originY), size: size)
    }
}
 */

struct Size {
    var width = 0.0, height = 0.0
}
struct Points {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Points()
    var size = Size()
}

extension Rect {
    init(center: Points, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Points(x: originX, y: originY), size: size)
    }
}

// Class Inheritance and Initialization  类的构造器
// 类的指定构造器不能放在extension中
class Vehicle {
    var numberOfWheels = 0
    var size = 100
    var description: String {
        return "\(numberOfWheels) wheel(s)"
    }
    init() {}
    
    init(numberOfWheels: Int, size: Int) {
        self.numberOfWheels = numberOfWheels
        self.size = size
    }
}

class Bicycle: Vehicle {
    var speed = 10
}
var bicycle = Bicycle()
var bicycle2 = Bicycle(numberOfWheels: 19, size: 100)

// Automatic Initializer Inheritance 构造器的自动继承
/*
 
 Rule 1
 If your subclass doesn’t define any designated initializers, it automatically inherits all of its superclass designated initializers.
 
 Rule 2
 If your subclass provides an implementation of all of its superclass designated initializers—either by inheriting them as per rule 1, or by providing a custom implementation as part of its definition—then it automatically inherits all of the superclass convenience initializers.
 
 These rules apply even if your subclass adds further convenience initializers.
 
 NOTE
 
 A subclass can implement a superclass designated initializer as a subclass convenience initializer as part of satisfying rule 2.
 

 规则 1
 
 如果子类没有定义任何指定构造器，它将自动继承所有父类的指定构造器。
 
 规则 2
 
 如果子类提供了所有父类指定构造器的实现——无论是通过规则 1 继承过来的，还是提供了自定义实现——它将自动继承所有父类的便利构造器。
 
 即使你在子类中添加了更多的便利构造器，这两条规则仍然适用。
 
 注意
 对于规则 2，子类可以将父类的指定构造器实现为便利构造器。
 */
class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}
// 尽管RecipeIngredient将父类的指定构造器重写为了便利构造器，它依然提供了父类的所有指定构造器的实现。因此，RecipeIngredient会自动继承父类的所有便利构造器。
// 所有的这三种构造器都可以用来创建新的RecipeIngredient实例：

let oneMysteryItem = RecipeIngredient()
let oneBacon = RecipeIngredient(name: "Bacon")
let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)

class ShoppingListItem: RecipeIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) x \(name)"
        output += purchased ? " Yes" : " No"
        return output
    }
}


// Failable Initializers 可失败构造器
/*
 struct Animal {
 let species: String
 init?(species: String) {
 if species.isEmpty { return nil }
 self.species = species
 }
 }
 你可以通过该可失败构造器来构建一个Animal的实例，并检查构造过程是否成功：
 
 let someCreature = Animal(species: "Giraffe")
 // someCreature 的类型是 Animal? 而不是 Animal
 
 if let giraffe = someCreature {
 print("An animal was initialized with a species of \(giraffe.species)")
 }
 // 打印 "An animal was initialized with a species of Giraffe"
 
 */


// Required Initializers 必要构造器
/*
 必要构造器
 在类的构造器前添加required修饰符表明所有该类的子类都必须实现该构造器：
 
 class SomeClass {
 required init() {
 // 构造器的实现代码
 }
 }
 在子类重写父类的必要构造器时，必须在子类的构造器前也添加required修饰符，表明该构造器要求也应用于继承链后面的子类。在重写父类中必要的指定构造器时，不需要添加override修饰符：
 
 class SomeSubclass: SomeClass {
 required init() {
 // 构造器的实现代码
 }
 }

 */

// Setting a Default Property Value with a Closure or Function

/*
class SomeClass {
    let someProperty: SomeType = {
        // 在这个闭包中给 someProperty 创建一个默认值
        // someValue 必须和 SomeType 类型相同
        return someValue
    }()
 
 注意
 如果你使用闭包来初始化属性，请记住在闭包执行时，实例的其它部分都还没有初始化。这意味着你不能在闭包里访问其它属性，即使这些属性有默认值。同样，你也不能使用隐式的self属性，或者调用任何实例方法
}
*/

struct Checkerboard {
    let boardColors: [Bool] = {
        var temporaryBoard = [Bool]()
        var isBlack = false
        for i in 1...8 {
            for j in 1...8 {
                temporaryBoard.append(isBlack)
                isBlack = !isBlack
            }
            isBlack = !isBlack
        }
        return temporaryBoard
    }()
    func squareIsBlackAtRow(row: Int, column: Int) -> Bool {
        return boardColors[(row * 8) + column]
    }
}

// Unowned Reference 无主引用
class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}
class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { print("Card #\(number) is being deinitialized") }
}


var john: Customer?
john = Customer(name: "John Appleseed")
john!.card = CreditCard(number: 1234_5678_9012_3456, customer: john!)

john = nil
/*
 注意
 上面的例子展示了如何使用安全的无主引用。对于需要禁用运行时的安全检查的情况（例如，出于性能方面的原因），Swift还提供了不安全的无主引用。与所有不安全的操作一样，你需要负责检查代码以确保其安全性。 你可以通过unowned(unsafe)来声明不安全无主引用。如果你试图在实例被销毁后，访问该实例的不安全无主引用，你的程序会尝试访问该实例之前所在的内存地址，这是一个不安全的操作。
 */

/*
 无主引用以及隐式解析可选属性
 
 上面弱引用和无主引用的例子涵盖了两种常用的需要打破循环强引用的场景。
 
 1.Person和Apartment的例子展示了两个属性的值都允许为nil，并会潜在的产生循环强引用。这种场景最适合用弱引用weak来解决。
 
 2.Customer和CreditCard的例子展示了一个属性的值允许为nil，而另一个属性的值不允许为nil，这也可能会产生循环强引用。这种场景最适合通过无主引用unowened来解决。
 
 3.然而，存在着第三种场景，在这种场景中，两个属性都必须有值，并且初始化完成后永远不会为nil。在这种场景中，需要一个类使用无主属性，而另外一个类使用隐式解析可选属性。
 
 这使两个属性在初始化完成后能被直接访问（不需要可选展开），同时避免了循环引用。这一节将为你展示如何建立这种关系。
 
 下面的例子定义了两个类，Country和City，每个类将另外一个类的实例保存为属性。在这个模型中，每个国家必须有首都，每个城市必须属于一个国家。为了实现这种关系，Country类拥有一个capitalCity属性，而City类有一个country属性：
 */
class Country {
    let name: String
    var capitalCity: City!
    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
    }
}

class City {
    let name: String
    unowned let country: Country
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
}

// Strong Reference Cycles for Closures

/*
class HTMLElement {
    
    let name: String
    let text: String?
    
    lazy var asHTML: () -> String = {
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name) />"
        }
    }
    
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    deinit {
        print("\(name) is being deinitiatlized")
    }
}

// 可以像实例方法那样去命名、使用asHTML属性。然而，由于asHTML是闭包而不是实例方法，如果你想改变特定 HTML 元素的处理方式的话，可以用自定义的闭包来取代默认值。

let heading = HTMLElement(name: "h1")
let defaultText = "some default text"
heading.asHTML = {
    return "<\(heading.name)>\(heading.text ?? defaultText)</\(heading.name)>"
}
print(heading.asHTML())

// Note: The asHTML property is declared as a lazy property, because it’s only needed if and when the element actually needs to be rendered as a string value for some HTML output target. The fact that asHTML is a lazy property means that you can refer to self within the default closure, because the lazy property will not be accessed until after initialization has been completed and self is known to exist.

*/

/*
 弱引用和无主引用
 
 在闭包和捕获的实例总是互相引用并且总是同时销毁时，将闭包内的捕获定义为无主引用。
 
 相反的，在被捕获的引用可能会变为nil时，将闭包内的捕获定义为弱引用。弱引用总是可选类型，并且当引用的实例被销毁后，弱引用的值会自动置为nil。这使我们可以在闭包体内检查它们是否存在。
 
 注意
 如果被捕获的引用绝对不会变为nil，应该用无主引用，而不是弱引用。
 */
class HTMLElement {
    
    let name: String
    let text: String?
    
    lazy var asHTML: () -> String = {
        [unowned self] in
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name) />"
        }
    }
    
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
    
}

/* Optional Chaining */
// The differients between Swift and OC: Optional chaining in Swift is similar to messaging nil in Objective-C, but in a way that works for any types,and that can be checked for success or failure. The nil in Objective-C can only assign to an Object.

// 用类型检查操作符（is）来检查一个实例是否属于特定子类型。若实例属于那个子类型，类型检查操作符返回 true，否则返回 false。
// 某类型的一个常量或变量可能在幕后实际上属于一个子类。当确定是这种情况时，你可以尝试向下转到它的子类型，用类型转换操作符（as? 或 as!）。

/* Extensions */
// Extensions are similar to categories in Objective-C. (Unlike Objective-C categories, Swift extensions do not have names.)
/*
 Extensions in Swift can:
 
 Add computed instance properties and computed type properties
 Define instance methods and type methods
 Provide new initializers
 Define subscripts
 Define and use new nested types
 Make an existing type conform to a protocol
 
 Swift 中的扩展可以：
 
 添加计算型属性和计算型类型属性
 定义实例方法和类型方法
 提供新的构造器
 定义下标
 定义和使用新的嵌套类型
 使一个已有类型符合某个协议
 在 Swift 中，你甚至可以对协议进行扩展，提供协议要求的实现，或者添加额外的功能，从而可以让符合协议的类型拥有这些功能。你可以从协议扩展获取更多的细节。
 
 注意
 扩展可以为一个类型添加新的功能，但是不能重写已有的功能。
 */

extension Int {
    enum Kind {
        case negative, zero, positive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}

var number = 5
if number.kind == .positive  {
    print("The number is positive")
}

protocol FullyNamed {
    var fullName: String { get }
}

struct PersonP: FullyNamed {
    var fullName: String
}

let p = PersonP(fullName: "Tony")

// NOTE

// If you mark a protocol instance method requirement as mutating, you do not need to write the mutating keyword when writing an implementation of that method for a class. The mutating keyword is only used by structures and enumerations.
// 注意
// 实现协议中的 mutating 方法时，若是类类型，则不用写 mutating 关键字。而对于结构体和枚举，则必须写 mutating 关键字。
/*
 可选的协议要求
 协议可以定义可选要求，遵循协议的类型可以选择是否实现这些要求。在协议中使用 optional 关键字作为前缀来定义可选要求。可选要求用在你需要和 Objective-C 打交道的代码中。协议和可选要求都必须带上@objc属性。标记 @objc 特性的协议只能被继承自 Objective-C 类的类或者 @objc 类遵循，其他类以及结构体和枚举均不能遵循这种协议。
 使用可选要求时（例如，可选的方法或者属性），它们的类型会自动变成可选的。比如，一个类型为 (Int) -> String 的方法会变成 ((Int) -> String)?。需要注意的是整个函数类型是可选的，而不是函数的返回值。
 

 */
@objc protocol CounterDataSource {
    @objc optional func incrementForCount(count: Int) -> Int
    @objc optional var fixedIncrement: Int { get }
}

class Counter {
    var count = 0
    var dataSource: CounterDataSource?
    func increment() {
        if let amount = dataSource?.incrementForCount?(count: count) {
            count += amount
        } else if let amount = dataSource?.fixedIncrement {
            count += amount
        }
    }
}

class ThreeSource: NSObject, CounterDataSource {
    let fixedIncrement: Int = 3
}
var counter = Counter()
counter.dataSource = ThreeSource()
for _ in 1...4 {
    counter.increment()
    print(counter.count)
}

@objc class TowardsZeroSource: NSObject, CounterDataSource {
    func incrementForCount(count: Int) -> Int {
        if count == 0 {
            return 0
        } else if count < 0 {
            return 1
        } else {
            return -1
        }
    }
}

counter.count = -4
counter.dataSource = TowardsZeroSource()
for _ in 1...5 {
    counter.increment()
    print(counter.count)
}































