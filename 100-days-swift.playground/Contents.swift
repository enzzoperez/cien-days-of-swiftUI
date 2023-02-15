//This time the challenge is to create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

let arrayString = [String](["enzo", "perez", "enzo"])
let a = arrayString.count
let s = Set(arrayString)
print(a)
print(s.count)
