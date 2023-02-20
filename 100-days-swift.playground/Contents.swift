let aux1 = "YAnderson"
let aux2 = "Bikers"

//with strings  sign >< and = compare the alphabetical order
if(aux1 < aux2){
    print("first \(aux1) and \(aux2)")
} else {
    print("first \(aux2) and \(aux1)")
}


//isEmpty is more performant that =="" or .count == 0
let c = "a"
let d = "aux"

if(d.isEmpty ){
    print("VACIO")
} else {
    print("CONTIENE LETRAS")
}

//comparition with enums
enum TransportOption {
    case airplane, bus, car, helicopter, biclycle, scooter
}

enum Movies {
    case batman, superman, marvel, dc, spiderman
}

let transport = TransportOption.helicopter

if(transport == .bus || transport == .car){ //only dots because Swift knows transport must be some kind of TransportOption
    print("Trafic!")
} else if(transport == .airplane || transport == .helicopter){
    print("Flying!")
} else {
    print("Walking")
}


//switch fallthrough
let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
case 2:
    print("2 turtle doves")
default:
    print("A partridge in a pear tree")
}


