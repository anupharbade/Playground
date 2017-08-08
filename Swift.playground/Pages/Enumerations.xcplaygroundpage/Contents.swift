//: [Previous](@previous)

import Foundation

// Enumerations are the common type of a group of related values and enables you to work with those values in a type-safe way within your code. - A definition from Apple's Swift programming book.


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

// Create an instance of Direction enum and assign north direction to it.
var direction: Direction = .north
headTo(direction)

direction = .east
headTo(direction)

//: [Next](@next)
