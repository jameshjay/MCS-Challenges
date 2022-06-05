//                  replace letters in a string

var stringName = "Replace the letter e with *"

// if you have a string, string.characters will divide it up individually.
// first, you must create a new string to store the next text.
// then loop, test each one and if it's an "e", add "*" instead.
//  otherwise, add the normal character and proceed.



var replacedString = ""

for i in stringName.characters {
  
  var character = "\(i)"
  
  if character == " " {
    // add the original replacedString + * instead of e
    replacedString = replacedString + ""
    
  } else {
    // keep it the same
    replacedString = replacedString + character
  }
}

print(replacedString)

//=================

var string1 = "james jay"

var reverse = ""

for character in string1.characters {
  var string1 = "\(character)"
  // logic, add the new first, then add the old behind it.
  // order of string1 + reverse MATTERS for reverse or in order.
  reverse = string1 + reverse
}

print(reverse)

//sretcarahc 92 sah gnirts siht

//==================

var longString = "split this string into words and print them on separate lines"

var word = ""

for i in longString.characters {
  if i == " " {
    print(word)
    word = "" // resets word to empty string, does it over again
    
  } else {
    // keep appending i to word
    word += "\(i)"
  }
}

print(word)

//                  finding the longest word in a string

var string2 = "find the longest word in the problem description"

// this will help the algorithm see the last word
string2 += " " //add a space at the end of the string

//  set some properties you will need,
//  one to hold the word
//  one to hold the length
//  one to hold max length
//  one to hold the longest word

var word1 = ""
var lengthOfCurrentWord = 0
var maxLength = 0
var longestWord = ""

// do a loop, if the length is greater than current max
//  then change the max
//  then set it as the longest word
//  then reset both word and length and start over
//          otherwise, add the character to word, and add +1 to length property to keep track
for i in string2.characters {
  if i == " " {
    if lengthOfCurrentWord > maxLength {
      // switch max
      // set new longest word
      maxLength = lengthOfCurrentWord
      longestWord = word1
    }
    // reset word, legnthofcurrentword
    word1 = ""
    lengthOfCurrentWord = 0
  } else {
    //  if no space reached (word not complete yet), then add character, add length until that space is reached.
    word1 += "\(i)"
    lengthOfCurrentWord++
  }
}

print(longestWord, "longest word")

//=========
