

var n = 12345

var reverse = 0

while(n > 0){
  //dividing by 10 leaves last digit as a remainder.
  var remainder = n % 10
  
  //move the other digit to the 10's place then add the new remainder.
  //keep doing it until all numbers finished = 0
  reverse = reverse * 10 + remainder
  //remove the last number
  n = n / 10
}

print(reverse)

