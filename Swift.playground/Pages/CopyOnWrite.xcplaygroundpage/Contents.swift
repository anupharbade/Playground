//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func address(of object: UnsafeRawPointer) -> String {
    let addr = Int(bitPattern: object)
    return String(format: "%p", addr)
}

var array = [1,2,3,4]
var copiedArray = array

//Both should have same address in the memory.
//This is because Array handles copy differently.
//The copy mechanism that array follows is copy on write.
//This mechanism copies the instances only when the instance is being mutated.
//Mostly this is to acheive performance
address(of:array)
address(of:copiedArray)



array.append(5)
//Here since we are trying to mutate the array it should create the copy of the array.
//This address should be different.
address(of:array)

copiedArray.append(5)
//Just bcz copiedArray was assigned with the original array at the time of assignment, Swift must be maintaining it as a
//copied instance which must be copied on write.
//We are trying to modify the instance here and hence in this case we need a separate instance as per the value type paradigm.
//CopiedArray will be copied to some other location now and must have different address than the previous.
//ARC must be taking care of releasing the previously allocated address.
address(of:copiedArray)

//We are trying to assign the copiedArray to array back.
//In which case the previous array instance should be released and the copiedArray address should be assigned.
//Printing the address of both the vars should print the same addresses
array = copiedArray
address(of:array)
address(of:copiedArray)

//Here the copiedArray is being mutated again and hence as per copy on write principle, it should be copied and assigned a new address
copiedArray.remove(at: 4)
address(of:copiedArray)

//array should have the same address as it had during assignment.
address(of: array)

//Trying to mutate array should again copy the address to another location and have the different address.
array.append(6)
address(of: array)

//: [Next](@next)
