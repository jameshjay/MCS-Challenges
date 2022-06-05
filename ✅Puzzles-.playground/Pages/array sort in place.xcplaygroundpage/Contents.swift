//: [Previous](@previous)

import Foundation

var numbers = [1, 4, 2, 5, 8, 3]

//sortinplace will mutate the array
numbers.sortInPlace(<) // this will sort the array in ascending order
numbers.sortInPlace(>)

//sort is only temporary, reverts back to old, does not mututate array
numbers.sort()
numbers