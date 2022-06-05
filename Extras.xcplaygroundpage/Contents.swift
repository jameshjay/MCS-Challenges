//extra tidbits

import Foundation


//printing individual characters
var james = "james jay"




// prints one letter each row

for i in james.characters {
  //  print(i)
  
  //print straight accross
  print(i, terminator:"")
}
print(terminator:" ")




//return only the first few characters of a string // start with 1

var car = "car"

car.substringToIndex(car.startIndex.advancedBy(2))




//change everything to lowercase and any space = add _

var change = "ChAnGe LoWeR aNd SPAcEs"

var changed = change.lowercaseString.stringByReplacingOccurrencesOfString(" ", withString: "_")

print(changed)


//shorthand to sort


var random = ["z","t","s","e","g","c","z","s","a","w","r"]

random.sortInPlace({ $0 < $1 }) // opposite, using closure
random.sortInPlace() //in order
