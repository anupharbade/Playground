//: Playground - noun: a place where people can play

import UIKit
var str = "Hello, playground"


let characters = str.characters
print(type(of: characters))

let firstCharacter = str.characters.first!
print(type(of: firstCharacter))

//Iterating over the characters in a String
//!Using For in loop
for char in characters {
    //prints character one by one using for in loop
    print(char)
}
//!Using For each function
characters.forEach { (char) in
    //prints character one by one using for each loop
    print(char)
}

//!Using enumerated function
for (index, char) in characters.enumerated() {
    print("Character \(char) is at index \(index).")
}

//!Counting number of characters in a string
print(str.characters.count)


//!Printing indexes
//First character
let firstChar = str.characters.first!
print(firstChar)
//!Last character
print(str.characters.last!)

//start index
print(str.startIndex)
//character at the index after first index
print(str[str.index(after: str.startIndex)])
//character at the index 4 houses away from the start index
print(str[str.index(str.startIndex, offsetBy: 4)])

//!Very useful. When you don't know the length of the string and you don't want app to crash.
let validIndex = str.index(str.startIndex, offsetBy: 28, limitedBy: str.endIndex)

if let validIndex = validIndex {
    print("Valid index")
} else {
    print("Invalid index")
}

//Some utility methods
print(str.contains("Hello"))
print(str.contains("Anup"))
print(str.hasPrefix("He"))
print(str.hasSuffix("d"))

//You can search a perticular character too
print(str.characters.contains("C"))
let modString = str+" Anup!"
print(str.substring(from: str.index(str.startIndex, offsetBy: 4)))
print(str.insert("A", at: str.endIndex))

print(String(str.characters.reversed()))

let mapped = str.characters.map { (char) -> Character in
    if char == " " {
        return "&"
    }
    
    return char
}

print(mapped)

