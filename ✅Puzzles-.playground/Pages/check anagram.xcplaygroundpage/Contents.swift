

func stringIsAnagram(str1: String, str2 : String) -> Bool {
  
  var dict1 = [Character: Int]()
  var dict2 = [Character: Int]()
  
  var count = 0
  
  for character in str1.characters {
    if (dict1[character] != nil) {
      dict1[character] = count++
    } else {
      dict1[character] = count
    }
  }
  
  
  for character in str2.characters {
    if (dict2[character] != nil) {
      dict2[character] = count++
    } else {
      dict2[character] = count
    }
  }
  
  print(dict1)
  print(dict2)
  
  if dict1 == dict2 {
    return true
  }
  return false
  
}

stringIsAnagram("abb", str2: "a")
