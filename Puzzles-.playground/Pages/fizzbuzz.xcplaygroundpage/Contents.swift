

import UIKit

var results = [String?]()

for i in 0...101 {
  var x = computeFizzBuzz(i)
  results.append(x)
}


func computeFizzBuzz(value: Int) -> String? {
  if value % 3 == 0 && value % 5 == 0 {
    return "FizzBuzz"
  } else if value % 3 == 0 {
    return "Fizz"
  } else if value % 5 == 0 {
    return "Buzz"
  } else {
    return nil
  }
}

for i in 15...20 {
  print(results[i])
}



