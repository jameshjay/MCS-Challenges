/*
 
 https://leetcode.com/problems/valid-parentheses/
 
 #20 Valid_Parentheses
 
 Level: easy
 
 Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 
 The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.
 
 */

import Foundation

public extension String {
  subscript (index: Int) -> Character {
    return self[self.startIndex.advancedBy(index)]
  }
}

class ValidateParentheses {
  class func isValid(_ passed: String) -> Bool {
    var stack = [Character]()
    var temp: Character
    var dict = [Character: Character]()
    // add key, value
    dict["]"] = "["
    dict[")"] = "("
    dict["}"] = "{"
    
    // loop through string count
    for i in 0...passed.characters.count - 1 {
      temp = passed[i]
      if temp == ")" || temp == "}" || temp == "]" { // if it's a closing bracket
        if stack.count == 0 || stack.last != dict[temp] { // check if stack empty or if the last not equal to value, return valse
          return false
        } else {
          stack.removeLast() // else, remove the stack
        }
      } else {
        stack.append(temp)
      }
    }
    if stack.count == 0 {
      return true
    } else {
      return false
    }
  }
}



ValidateParentheses.isValid("[[]]")
var x = "[]]"
ValidateParentheses.isValid(x)
