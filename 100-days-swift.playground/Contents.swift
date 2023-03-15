//If you want to mix and match static and non-static properties and methods, there are two rules:
//
//To access non-static code from static code… you’re out of luck: static properties and methods can’t refer to non-static properties and methods because it just doesn’t make sense – which instance of School would you be referring to?
//To access static code from non-static code, always use your type’s name such as School.studentCount. You can also use Self to refer to the current type.
struct School {
    var studentCount = 0
    static var name = "ENZOU"

    static func add(student: String) {
        print("\(student) joined the school.")
//        studentCount += 1
    }
    
    func printName() {
        print("my name is \(Self.name)", School.name)
    }
}

School.add(student: "init")

//checkpoint structs: create car structs and methos to change gear

struct Car {
    static let model: String = "MODEL CAR"
    let numberOfSeats: Int = 9
    var currentGear: Int = 0
    
    mutating func changeGear(to: String) {
        if to.uppercased() == "UP" && currentGear < 5 {
            currentGear += 1
        }
        if to.uppercased() == "DOWN" && currentGear > 0 {
            currentGear -= 1
        }
    }
}

var car = Car()
car.changeGear(to: "UP")
car.changeGear(to: "UP")
car.changeGear(to: "UP")
car.changeGear(to: "UP")
car.changeGear(to: "UP")
car.changeGear(to: "UP")
print(car.currentGear)

//could we find some workaround with observers?
