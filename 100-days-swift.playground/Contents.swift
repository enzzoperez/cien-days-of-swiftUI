//ARRAYs
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents) //doesnt print another array

//SETs
let arrayOfBlogCategories: [String] = ["Swift", "Debugging", "Xcode", "Workflow", "Optimization"]
let setOfBlogCategories: Set<String> = ["Swift", "Debugging", "Xcode", "Workflow", "Optimization"]
print(setOfBlogCategories, arrayOfBlogCategories)


//ENUMs
enum Weekday {
    case "monday" // error
    case tuesday
    case wednesday
    case thursday
    case friday
}

print(Weekday.monday)
