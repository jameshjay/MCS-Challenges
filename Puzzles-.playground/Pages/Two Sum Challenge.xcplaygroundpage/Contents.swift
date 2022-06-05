
// t = O(N), s = O(N)
func twoSum(numbers: [Int], target: Int) -> [Int] {
  var hashMap = [Int: Int]()
  var result = [Int]()
  
  
  for i in 0..<numbers.count {
    
    
    let numberToFind: Int = target - numbers[i]
    
    if let indexGiven = hashMap[numberToFind] {
      
      print(hashMap[5], "index")
      result.append(indexGiven)
      print(numbers[indexGiven])// this would be the index value that matched
      result.append(i)
      print(numbers[i])// this would be the last index value you were on that had a matching numbertofind
      return result
    }
      
    else {
      print("enter else")
      // this adds the value and a key 1,2,3,4,5
      hashMap[numbers[i]] = i
      print(hashMap[numbers[i]])
    }
  }
  return result
}


var array = [2,6,5,77,88,4]
var target = 10

var result =  twoSum(array, target: target)
print(result)




