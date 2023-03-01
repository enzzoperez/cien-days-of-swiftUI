//structs functions

struct MyHome {
    var dir: String
    var distance: Int = 0 {
        willSet{
            //not work: distance = 42
            print("antes: \(distance), va a cambiar a", newValue)
        }
        didSet{
            distance = 42
            print("deszpues: \(distance), venia de", oldValue)
            
        }
        
    }
}

var a = MyHome(dir: "CASEROs", distance: 30)
a.distance += 2


//inits
struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = 32
    }
}

let player = Player(name: "Megan R")
print(player.number)
