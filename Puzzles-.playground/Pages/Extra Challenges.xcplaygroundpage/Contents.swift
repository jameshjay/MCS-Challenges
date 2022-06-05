//================   1
// replace the letter e with a * in string

var string = "replace the letter e with *"

var newStringToStore = ""

for i in string.characters {
  if i == "e" {
    newStringToStore = newStringToStore + "*"
    
  } else {
    newStringToStore = newStringToStore + "\(i)"
  }
}

print(newStringToStore)
print("*******")

//====================  2    ================

// reverse the string

var reverseThisString = "james jay"

var storeNewReversedString = ""

for i in reverseThisString.characters {
  
  // new letter always out in front
  storeNewReversedString = "\(i)" + storeNewReversedString
}

print(storeNewReversedString)
print("*******")

//=============   3    =======================

//  split a long string into separate words and print them on separate lines

var longString = "split this string into words and print them on separate lines"

var separatedString = ""

for i in longString.characters {
  if i == " " {
    print(separatedString)
    separatedString = ""
  } else {
    //         separatedString += "\(i)" //same thing
    separatedString = separatedString + "\(i)"
  }
}
// this will print the last word since no space.
print(separatedString)
print("*******")

//============   4     ========================
// Find the longest word in the string

var longestWordInTheString = "find the longest word in the problem description"

// add a space to the end, SAME
longestWordInTheString.appendContentsOf(" ")
longestWordInTheString += " "

var currentLength = 0
var longestLength = 0

var currentWord = ""
var longestWord = ""

for i in longestWordInTheString.characters {
  // since you're using spaces to keep track, you need to add a space at the end
  if i == " " {
    if currentLength > longestLength {
      //make changes
      longestWord = currentWord
      longestLength = currentLength
    }
    
    //then reset
    currentLength = 0
    currentWord = ""
    
  } else {
    currentWord = currentWord + "\(i)"
    currentLength++
  }
}

print(longestWord)
print("********")

//=============    5    ========================

//              Most common integer

// find the most common
let array = [7,3,7,4,1,3,7]


var dictionary = [Int: Int]()

for i in array {
  dictionary[i] = (dictionary[i] ?? 0) + 1
}


//let decending = dictionary.sort({$0.1 > $1.1})

//print(decending)

//  =============   6    =======================
//      find the sum of two numbers that equal target value

func findTwoNumbers(numbers: [Int], target: Int) -> [Int]? {
  
  var dictionary = [Int: Int]()
  var result = [Int]()
  var index = 0
  
  while index < numbers.count {
    
    let numberToFind: Int = target - numbers[index]
    
    if let foundNumberIndex = dictionary[numberToFind] {
      result.append(foundNumberIndex)
      result.append(index)
      print("exists!")
      return result
    } else {
      dictionary[numbers[index]] = index
    }
    
    ++index
    
    if index == numbers.count {
      print("does not exist")
      break
    }
  }
  return result
}

var array1 = [2,6,5,77,88,3]
var targetValue = 5

//placed into an array
var twoIndexes = findTwoNumbers(array1, target: targetValue)
print(twoIndexes)

// ======== 7 =======================

// add array to dictionary

var dictionary1 = [Int:Int]()
var count = 1

//for i in array1 {
//    dictionary1[i] = count++
//}

for i in 0..<array1.count {
  dictionary1[array1[i]] = i
}

print(dictionary1)

//  ============  8  ===========
//  find max value in array
//  use array1

var maxValue = array1[0]

for i in array1 {
  if maxValue < i {
    maxValue = i
  }
}

print(maxValue)

// ============= 9 =================
//  check bracket order, parentheses
print("**********")



import Foundation

private extension String {
  subscript (index: Int) -> Character {
    print(index, "index")
    //  get what's in string index 0
    //  using extensions make it more readable
    print(self[self.startIndex.advancedBy(index)], "return values")
    
    return self[self.startIndex.advancedBy(index)]
  }
}

class Easy_020_Valid_Parentheses {
  class func isValid(sjString: String) -> Bool {
    print("2")
    
    var stack: [Character] = []
    var tempHolder: Character
    //  other way
    //  var dict: Dictionary<Character, Character> = Dictionary()
    var dict = [Character : Character]()
    
    // place inside dictinoary
    dict["]"] = "["
    dict[")"] = "("
    dict["}"] = "{"
    //      count the total number of characters in string
    //      this is the string you passed in
    for i in 0..<sjString.characters.count {
      print(" ********** entered for loop")
      //  it's here you're trying to grab the index
      tempHolder = sjString[i]
      print(tempHolder, "inside tempHolder")
      print(stack.last, "stack last 1")
      // it's really dict[)], the key, and returns ( THE OPPOSITE
      print(dict[tempHolder], "dict tempHolder 1")
      
      if tempHolder == ")" || tempHolder == "}" || tempHolder == "]" {
        print(stack.count, "stack count so far")
        
        //  in order for (] not to be true, need || part
        //  if it's the opposite, then remove it and continue. They all cancel. It's stored on the stack in order.
        // stack is the last thing that was added
        // if it matches, remove the last one and continue
        if stack.isEmpty || stack.last != dict[tempHolder] {
          //  stack.last is the last item you appended.
          print(stack.last, "stack last")
          print(dict[tempHolder], "dict tempHolder")
          return false
        } else {
          print("remove last")
          stack.removeLast()
        }
      } else {
        print("append \(tempHolder)")
        stack.append(tempHolder)
        print(stack,"inside the stack")
        print(stack.count, "stack count at end")
      }
    }
    
    
    //  doesn't check here until the for loop is finished, which is all of the characters in the string first.
    if stack.count == 0 {
      return true
    } else {
      return false
    }
  }
}

var test = Easy_020_Valid_Parentheses.isValid("")
print(test)

// ============  10  =================
print(" +++++++++++++ ")

// remove duplicates in sorted array


class Easy_026_Remove_Duplicates_from_Sorted_Array {
  
  // O (1) space, O(N) time
  class func removeDuplicates(inout arr: [Int]) -> [Int] {
    //        if arr.count < 2 {
    //            return arr.count
    //        }
    var n = arr.count
    var newArray = [Int]()
    for var i = 1; i < n; i++ {
      if arr[i] == arr[i-1] {
        print(arr[i], "this is duplicate about to be removed")
      } else {
        newArray.append(arr[i-1])
        
      }
    }
    return newArray
  }
}

var array22 = [1,2,3,4,5,5,6]

var x = Easy_026_Remove_Duplicates_from_Sorted_Array.removeDuplicates(&array22)
print(x)
print(array22) // still the same


// ======== 11 Remove duplicates in sorted linked list =======


import Foundation

class Easy_083_Remove_Duplicates_From_Sorted_List {
  class Node {
    var value: Int
    var next: Node?
    init(value: Int, next: Node?) {
      self.value = value
      self.next = next
    }
  }
  class func deleteDuplicates(head: Node?) -> Node? {
    if head == nil {
      return nil
    }
    var curr: Node? = head
    while curr?.next != nil {
      if curr?.value == curr?.next?.value {
        curr?.next = curr?.next?.next
      } else {
        curr = curr?.next
      }
    }
    return head;
  }
}






