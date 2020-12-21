//: [Previous](@previous)

/// ### Strings and Characters

var str = "Hello, Abhi"

/// - Multiline String Literals - inculde white spaces
var multiLineStr = """
    I'm Abhishek kapoor.\
What is your name?
"""
//print(multiLineStr)

var singleLineStr = "I'm Abhishek kapoor.What is your name?"

//print(singleLineStr,multiLineStr,separator: "\n", terminator: "\n")


/// Injeting Unicode values
var message = "\u{1F600}"
//print(message)

var empty = ""
empty = String()

//for c in singleLineStr{
//    print(c)
//}

/// String from Characters array
var charArray:[Character] = ["a","b","h","i"];
str = String(charArray)

/// - String Interpolation
let name="Abhishek kapoor"
str = "Welcome onboard \(name)"


/// ## Accessing and Modifying a String
str = "Abhishek"

/// 1. String Indices
str[str.startIndex]
str[str.index(after: str.startIndex)]
str[str.index(before: str.endIndex)]
str[str.index(str.startIndex,offsetBy: 1)]
//for i in str.indices{
//   print(str[i])
//}

/// 2.Inserting and Removing

/// Char
str.insert("M", at:str.startIndex)

/// String
str.insert(contentsOf: "Mr ", at: str.startIndex)

str.remove(at: str.index(before:  str.endIndex))
str
str = "Abhishek"
var range = str.index(str.endIndex,offsetBy: -4)..<str.endIndex
str.removeSubrange(range)

/// Substrings
var s = str.firstIndex(of: "s") ?? str.endIndex
var subStr = str[..<s]
//print(subStr)

/// Comparing Strings
"abhishek"=="abhishek"
"abhishek" != "abhishek"

/// “Prefix and Suffix Equality”
str="Abhishek"
str.hasPrefix("Ab")
str.hasSuffix("ek")


// UNICODE STUFF ...


//: [Next](@next)
