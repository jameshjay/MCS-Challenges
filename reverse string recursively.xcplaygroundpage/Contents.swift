//: Playground - noun: a place where people can play

/*********************************************************
 
 DONE DASH
 
 *********************************************************/

import Foundation

var name = "james"
var reverseString = ""


func dothis() {
  if name.characters.count == 0 {
    return
  }
  
  var count = name.characters.count
  // string.start at front index. and advance by the count - 1
  
  /// to use String as an array to access char, string.startIndex.advanceBy(count - 1)
  var lastCharIndex = name.startIndex.advancedBy(count - 1)
  reverseString = reverseString + "\(name[lastCharIndex])" // or String( )
  // endIndex always gives past the last index value. Predecessor to get value before
  //  Returns a new string containing the characters of the String up to, but not including, the one at a given index.
  

  ///   HOW TO REMOVE LAST CHARACTER FROM STRING, substring returns a new string up to index.
  /// to the endIndex but just up to the one before it.
  name = name.substringToIndex(name.endIndex.predecessor())
  dothis()
  
}

dothis()

print(reverseString)
