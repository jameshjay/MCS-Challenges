  
  var array = [1,2,3,4,5]
  var dictionary = [Int: Int]()
  
  //    to store an array in a dictinoary, holds value and index number
  for i in 0..<array.count {
    dictionary[i] = array[i] // place the value in array to value in dictionary
                              // key will be 1,2,3,4, in order 
    
  }
  
  // ********************************************************************************
  
  
  print(dictionary[2])
  //    this will print index value of where 2 is
  print(dictionary[2])

  //    terenay conditional operator, if else
  for i in 0..<array.count {
     array[i] == 5 ? print("it's here") : print("not here")
  }
  
  //    check if array contains element
  if array.contains(33) {
    print("true")
  } else {
    print("false")
  }
  
  //    find and delete 
  //        indexOf property in array.
  if let x = array.indexOf(3){
    print(x)
    array.removeAtIndex(x)
    print(array)
  }
  
