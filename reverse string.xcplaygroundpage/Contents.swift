//: Playground - noun: a place where people can play
// Reverse String
// Checks for palindrome

import Cocoa
import Foundation

///     remove first character in string

var str = "input"
var firstChar = str.removeAtIndex(str.startIndex)

///   reverse the string using Swift
var reverseString = str.characters.reverse()

///   reverse string using for loop
var rev = ""

for character in string.characters {
  rev = String(character) + rev
}

// ********************************************************************************

/// add string to an array

var string = "yup"
var array = [Character]()

for i in string.characters {
  array.append(i)
}
print("add string to array", array)

/// print the array backwards v

//        Swift way:
//  this will print the numbers from 10 to 1
//  for i in (1...10).reversed() {
//    print(i)
//  }
//  to reverse an array, you can just use array.reverse() using Swift

//    old C++ way
//  for ( init; condition; increment ) {
//    statement(s);
//  }
var backwards: String!
for (var i = array.count - 1; i >= 0; i--) {
  backwards = array[i]
}
print("array backwards", backwards)





