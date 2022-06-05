let charactersArray = ["P","Q","R","S","T","P","R","A","T","B","C","P","P","P","P","P","C","P","P","J"]

var countDict = [String:Int]()

for i in charactersArray {
  // the key      " the value for the key to be set + 1
                // add original value
  // dict[i] = (dict[i] ?? 0) + 1
  countDict[i] = (countDict[i] ?? 0) + 1 // if not nil, use value, // if nil, use 0, // add 1 to start
}


// { should return a boolean value }
// $0 represents an object in an array or dictionary
// if the countDict value == 1 then filter the array
let newArray = charactersArray.filter({countDict[$0] == 1})
print(newArray[0])
print(newArray.count)
print(newArray.first)


//// ["Q", "S", "A", "B", "J"]
//let firstNonRepeatingCharacter = nonRepeatingCharacters.first!
//// "Q"
