// =======  11 ==========
// RETURN LENGTH OF THE LAST WORD IN STRING


import Foundation

var words = "is this "

private extension String {
  subscript (index: Int) -> Character {
    print(self[self.startIndex.advancedBy(index)], "startIndex")
    // returns individual letter in string, including spaces
    return self[self.startIndex.advancedBy(index)]
  }
}

struct Easy_058_Length_Of_Last_Word {
  static func lengthOfLastWord(s: String) -> Int {
    var length = 0
    
    for var i in 0..<s.characters.count {
      //        while i < s.characters.count {
      // accessing string index/subscript
      if s[i++] != " " {
        print(i, "value of i")
        // i only increments when s[i++] not a space
        
        
        length++
        print(length, "value of length")
        
        // this accounts for the space at the end of a string, if any.
        // if not true either, pop out and return.
        // IF NEXT ONE IS A SPACE, IT MUST FIT COUNT AND THE CURRENT ONE MUST NOT BE A SPACE
        // RESET
        
        // IF THE CURRENT ONE IS A SPACE, POP OUT
        // IF JUST REGULAR AT THE END (REACHED THE COUNT AND NOT SPACE)
      } else if i < s.characters.count && s[i] != " "  {
        print(length, "else if length value but will reset to zero")
        
        length = 0 //reset to zero
      }
    }
    print(" %%%%%%%%%%% how many times entered")
    return length
  }
}

var lengthoflastword = Easy_058_Length_Of_Last_Word.lengthOfLastWord(words)
print(words.characters.count, "total characters")
print(lengthoflastword)

