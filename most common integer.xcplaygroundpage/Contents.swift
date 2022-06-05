/* Find the most frequent integer in an array
 Find the least frequent integer in an array
 Find an element that occurs only once, twice, three time etc"
 Check for anagram, create two dicts & for loops, then check == */

/*********************************************************
 
 create a dictionary (key, value)
 Key = the value of the int in array
 Value = will contain how many times it is in the array ( +1), if nil (first time, = 1)
 Use an if else
 
 note: "dictionary[i] will always return the value of that key, never the key itself"
 
 sorting through dictionaries
 for (key,value) in dictionary {
 }
 
 Value will hold the count for the specific key.
 pseduocode
 loop through i in array
 does the key(i) already have a value?
 if yes, add the previous value for that key and add one (dict[i] + 1)
 if no, then just add value 1 to that key. (first time seeing it)
 *********************************************************/


// find the most common
let array = [5,5,5,5,5,3,3,3,4,4,4,4,1,0]

var word = "abcd"
var rev: String = ""
for i in word.characters {
  rev = "\(i)" + rev
}
print(rev, "rev")

//create a dictionary so you can store a key for each elements and their frequency

var dictionary = [Int: Int]()
var count = 1

for i in array {
  print(i, "value in array")
  
  //The nil-coalescing operator (a ?? b) unwraps an optional a if it contains a value, or returns a default value b if a is nil.
  
  //    dictionary[i] = (dictionary[i] ?? 0)+1
  if dictionary[i] != nil {
    dictionary[i] = dictionary[i]! + 1
  } else {
    dictionary[i] = count
  }
}

for (key,value) in dictionary {
  if 1 == dictionary[key] {
    print(key, "this has only one")
  }
}

//let decending = dictionary.sort({$0.1 > $1.1})

//  @@@ how does this sort work.
let decending = dictionary.sort({$0.1 > $1.1})

print(decending)



