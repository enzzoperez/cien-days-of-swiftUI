//var lyric = "Haters gonna"
//
//for i in lyric {
//    print("my: ", i)
//}
//
//
//print("Tu", 100 % 1000)


//continues
//let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]
//
//for filename in filenames {
//    if filename.hasSuffix(".jpg") == false {
//        break
//    }
//
//    print("Found picture: \(filename)")
//}


//Checkpont: fizzbuzz problem

for n in 1...100 {
    if n % 3 == 0 && n % 5 == 0 {
        print("fizz buzz")
    } else if(n % 3 == 0) {
        print("Fizz")
    } else if(n % 5 == 0) {
        print("buzz")
    } else {
        print("number: ", n)
    }
}
