//: [Previous](@previous)

import Foundation
//: # Enumerations
/*:
 Enumerations are the common type of a group of related values and enables you to work with those values in a type-safe way within your code. - A definition from Apple's Swift programming book.
 */
// Simple example of an enum in Swift
enum Direction {
    case north
    case south
    case east
    case west
}

// Swift enumeration cases can also be declared in one single line.
enum Month {
    case Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec
}

// Swift enumerations are not assigned default integer values to them unlike C programming language.

// Func to print the direction being headed
func headTo(_ direction:Direction){
    // You can match Swifts cases using switch statement
    switch direction {
    case .north:
        print("Heading to north direction")
    case .south:
        print("Heading to south direction")
    case .east:
        print("Heading to east direction")
    case .west:
        print("Heading to west direction")
    }
}

//: # Associated Values
// Create an instance of Direction enum and assign north direction to it.
var direction: Direction = .north
headTo(direction)

direction = .east
headTo(direction)

// enables to store additional custom information(associated values) for an enum case.
enum Shape {
    case rectangle(Int, Int)
    
    //Hello this is one of the best thing happening to me.an
    // I am watching Simran! Simran is a movie about a beautiful girl who is habitual to
    case circle(Float)
}

func dimensionFor(_ shape:Shape) {
    switch shape {
    case let .rectangle(length, bredth):
        print("Rectangle is of \(length)*\(bredth) dimensions")
    case let .circle(radius):
        print("Circle is of \(radius)")
    }
}

// shape is a rectangle with the length and bredth provided as an associated value to it.
var shape = Shape.rectangle(4, 2)
dimensionFor(shape)
// shape is changed to circle and the associated value is given as 5.0 which is the radius of the Circle shape.
shape = Shape.circle(5.0)
dimensionFor(shape)

//: # Raw Values
/*:
 Enumerartions can come prepopulated. Those can be considered default values for the enum. All values should be of same type. It's an alternative approach to assocaited values.
 
 Raw values are not the same as associated values. Raw values are set to prepopulated values when you first define the enumeration in your code, like the three ASCII codes above. The raw value for a particular enumeration case is always the same. Associated values are set when you create a new constant or variable based on one of the enumeration’s cases, and can be different each time you do so.
 */

//Enum with explicit raw values
enum State: String {
    case Texas = "TX"
    case California = "CA"
    case Kansas = "KA"
    case Arkansas = "AR"
    case Atlanta = "AT"
    case Florida = "FL"
}

//create new State enum instance
var state = State.Texas
//assign new state
state = State.Florida
//assign new state using raw values
if let _state = State(rawValue: "AR") {
    state = _state
}


//Enum with Implicitly assigned Raw Values
enum Number: Int {
    case One = 1
    case Two
    case Three
    case Four
    case Five
}

//create new Number enum
var number = Number.Five
//assign number with raw value
if let _number = Number(rawValue: 1) {
    number = _number
}

//TODO: Check if this is possible.
////Enum with Raw values and Associated values
//enum Vehicle: Int {
//    case Scooter(String)
//    case Car(String)
//    case Truck(String)
//}


//: [Next](@next)
