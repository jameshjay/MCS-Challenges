
import Foundation

var n = 4
print(" ")
print(" Print")
for i in 1...n{
  for j in 0..<(n-i){
    print(" ", terminator: "")
  }
  for j in 1...(i*2-1) {
    print("x", terminator: "")
  }
  print("")
}

//one less row
for g in 1...(n-1) {
  //must utilize n and also decreases
  var x = n - g
  //prints 1 first
  for k in 1...g {
    print(" ", terminator: "")
  }
  //prints 5 first, adjust from here
  for k in 1...2*x-1 {
    print("x", terminator: "")
  }
  print("")
}
