let myPrint = {
    print("This is a basic closure")
}
myPrint()


//closure with errors!
enum myError: Error { case MyError }
let myClosureParams = {(number: Int, name: String) throws -> String in
    if(name == "enzou"){
        throw myError.MyError
    }
    return "my \(name) is \(number)"
}

do{
    let a = try myClosureParams(4, "enzou")
    print(a)
} catch myError.MyError {
    print("error in screen")
}

//with func
func myFuncCl(name: String, num: String) -> Int {
     42
}

var b = myFuncCl
b("E", "ERT")

//passing func
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}
let rolls = makeArray(size: 50, using: {
    Int.random(in: 1...3)
})
//let rolls = makeArray(size: 50) {
//    Int.random(in: 1...20)
//}


//print(rolls)


//CHECKPOINT

//My solution (too JS based)
print("Checkpoint started")
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

func myEven(n: Int) -> Bool { n % 2 != 0 }
func sortArray(item1: Int, item2: Int) -> Bool {item1 < item2}
func convert(item: Int) -> Void { print("\(item) is a lucky numbers") }

luckyNumbers
    .filter(myEven)
    .sorted(by: sortArray)
    .map(convert)


//proposed solution
let luckyNumbersA = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let myFilter = { (array: [Int]) in
    array
        .filter{ !$0.isMultiple(of: 2)}
        .sorted()
        .map{print("\($0) is a lucky number")}
}

myFilter(luckyNumbersA)
