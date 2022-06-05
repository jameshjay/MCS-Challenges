//                              find the max value

var array = [1,2,3,4,5]

// just set the first one as max
var maxValue = array[0]

// cycle through, test, swift if not true
for i in array {
  if maxValue < i {
    maxValue = i
    
  }
}

print(maxValue)

// value types vs reference types, value types make a unique copy that doesn't affect the original whereas class (reference type) makes a shared copy that will affect origina. ex. passed by reference or passed by value.



//                              print all the odd numbers

for i in array {
  if i % 2 != 0 {
    print(i, "odd numbers")
  }
}


//                      print the sum of all the numbers in the array
var total = 0

for i in array {
  total += i
}

print(total, "total")

//                          print all values at odd indexes

for (var i = 0; i < array.count; i+=2) {
  print(array[i], "all values at odd indexes")
}

//                      print numbers in array in reverse order

for i in 1...array.count{
  
  //array.count - i ((this will start from 5 and reduce))
  print(array[array.count-i], "PRINT in reverse order, but order in array remains the same")
}

//                  reverse the order of the elements in the array without creating a new array
var array1 = [1,2,3,4,5]
var firstIndex = 0
var lastIndex = array.count - 1

while firstIndex < lastIndex {
  //swap
  var temp = array1[firstIndex]
  array1[firstIndex] = array1[lastIndex]
  array1[lastIndex] = temp
  
  ++firstIndex
  --lastIndex //remember to subtract last index!!!!
}

print(array1, "array is now in reverse order")

//                          sort the array (swift way)

var mixarray = [1,9,2,7,3,5,34,3]
mixarray.sortInPlace(>)
print(mixarray, "sort in descending order")

mixarray.sortInPlace(<)
print(mixarray, "sort in ascending order")


//                          search to see if value exists

var searchedValue = 2

var valueExists =  false

for i in mixarray {
  if i == searchedValue {
    valueExists = true
    print("true")
  }
}

//                      print only numbers that exist in both arrays

var listOfNumbers = [1, 2, 3, 10, 4]
var otherNumbers = [1, 2, 3, 4, 5, 6]
//loops through both to see if they match
for i in otherNumbers {
  for j in listOfNumbers {
    if i == j {
      print(i, "same numbers")
      break
    }
  }
}

//                      print all the numbers from array that are divisible by at least one number from another array

var list = [1, 2, 3, 10, 100]
var divisors = [2, 5]

for i in list {
  for j in divisors {
    if i % j == 0 {
      print(i, "number divisible")
    }
  }
}

//                                          fibonacci sequence

var N = 10


var startArray = [1, 1]

//  start at 2 up to 1 less than N
// start loop
for i in 2...N - 1 {
  // append to the array, array[1] + array[0] = array[1]
  // array 2 + array 1 = array 3
  //        this will start by adding the value at array 0 and array 1
  //        then it will increment 1 as it goes through the loop
  //        next will be array 1 and array 2 etc until it gets to N
  startArray.append(startArray[i-2] + startArray[i-1])
}

// this will print the results
for j in startArray {
  print(j, "fibonacci")
}

//                      Given a number find and store all it’s divisors in an array called divisors, then print the divisors in ascending order on separate lines.

var number2 = 60
var array2 = [Int]()

for i in 1...number2 {
  if number2 % i == 0 {
    array2.append(i)
  }
}

print(array2, "array")

for i in array2 {
  print(i)
}

//                  you have one long integer, split it so each digit is on it's own.

var number = 12345
var array3: [Int] = []

// as long as the number is greater than 0, perform action
while number > 0 {
  // divide number by 10 and store remainder in digit
  var digit = number % 10
  
  //  bc both are arrays, required brackets
  array3 = [digit] + array3
  
  number = number / 10 // 12345 -> 1234 -> 123 -> 12 -> 1
  // number /= 10
}

print(array3.sort(>), "array3")

//                          how to print one of each number

var array4 = [1, 2, 3, 1, 2, 10, 100]
var uniqueArray = [Int]()

for i in array4 {
  // set to true at first, then test to see if you can make false
  var uniqueNumber = true
  
  // check uniqueArray
  for j in uniqueArray {
    // if array4 and uniqueArray match, set it to false
    if i == j {
      uniqueNumber = false
      break // end the execution of the loop
    }
  }
  
  
  //  uniqueNumber is true (always will be at first) then append to the array
  // if uniqueNumber { // also written
  if uniqueNumber == true {
    uniqueArray.append(i)
  }
  
}

//                                  print the array individually
for i in uniqueArray {
  print(i, "unique numbers")
}

print(uniqueArray, "unique array")
