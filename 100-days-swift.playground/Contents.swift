func printMyMsg(msg: String, number: Int) -> Void {
    print(msg, number)
}

printMyMsg(msg: "Hola", number: 9)
//printMyMsg(number: 8, msg: "Error")

func rollDice() -> Int {
    Int.random(in: 1...6)
}

print(rollDice())

func areEqualString(str1: String, str2: String) -> Bool {
    return str1.sorted() == str2.sorted()
}

areEqualString(str1: "abc", str2: "cab")

func helpTuple(name: String, age: Int) -> (name: String, age: Int) {
    return (name,age)
}

let (name, age) =  helpTuple(name: "enzou", age: 18)

print("\(name) has \(age)")


//func names parameters
//EXTERNAL - INTERNAL!!
func helpUpper(mystring passedString: String) -> Bool {
    print(passedString)
    return passedString == "hola"
}

func helpUpper(_ passedString: String) -> Bool {
    print(passedString)
    return passedString == "hola"
}

helpUpper("hola sin names")
helpUpper(mystring: "hola")


func evaluateJavaScript(_ input: String) {
    print("Yup, that's JavaScript alright.")
}
