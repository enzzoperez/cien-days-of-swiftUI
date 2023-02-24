func myDefaultParams(_ number: Int = 2) -> Int {
    return number * 2
}

print("Mult: ", myDefaultParams())


//handle errors swift
enum WordError: Error {
    case short, long, wrong
}

func guessingGame(word: String) throws -> String {
    let correctWord = "River"
    if word.count < correctWord.count {throw WordError.short}
    if word.count > correctWord.count {throw WordError.long}
    if word != correctWord {throw WordError.wrong}
    return "Well done!"
}

do{
    let res = try guessingGame(word: "river")
} catch WordError.long {
    print("muy largo")
} catch WordError.short {
    print("Muy corto")
} catch WordError.wrong {
    print("Equivocado")
}


//checkpoint 4: write func from 1 to 10k return square root
enum CalcError: Error {
    case outOfBounds, noRoot
}

func myRoot(number: Int) throws -> Int {
    //handle out of range error
    if(number < 1 || number > 10_000) {
        throw CalcError.outOfBounds
    }
    
    //by iterating number until number param because square root cannot be greater than number param itself
    for i in 1...number {
        let result = i * i
        //comparition with number to check if i could be the sqrt, if so, we return it
        if(result == number){
            return i;
        }
    }
    
    throw CalcError.noRoot
}

do{
    try print(myRoot(number: 32))
} catch CalcError.noRoot {
    print("cannot calculate root")
} catch CalcError.outOfBounds {
    print("Out of range")
}
