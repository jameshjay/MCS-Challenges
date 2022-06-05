import UIKit

extension Int {
  mutating func plusOne() {
    
    // return REMOVED and return TYPE ARROW
    // will not all you to modify self in extension by default.
    // in order to work, must write MUTATING near func name
    self += 1
  }
}

var myInt = 0
myInt.plusOne()
myInt.plusOne()
myInt.plusOne() // if return removed, and mutating added, ORIGINAL VALUES WILL CHANGE
myInt
// does not add additional one
// original value is not changed

//      can't use 3 because we can't modify/change the meaning of "3", ONLY "myInt"
// 3.plusOne()
