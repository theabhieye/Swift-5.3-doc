//: [Previous](@previous)
/// ### Collection Type

/// ##  Array

///  - Creating an Empty Array

/*
var intArr1 = [Int]();
//var intArr2 = []()
//intArr2.append(20)
//type(of: intArr2)

/// - Creating an Array with a Default Value

intArr1 = Array(repeating: 4, count: 4)
var doubleArr = Array(repeating: 5.0, count: 5)

/// - Creating an Array by Adding Two Arrays Together

var d = intArr1 + Array(repeating: 10, count:5)


/// - Creating an Array with an Array Literal

intArr1 = [2,3,4,5,6,7,4,8]

var strArr:[String] = ["Aisa","Austrila","America",]

var arr = [1,2,3,4,5,6]

/// -  Accessing and Modifying an Array
print(intArr1)
print("Array count \(intArr1.count)")
intArr1.append(40)
intArr1+=[20,20]
print([String]().isEmpty)
print(intArr1.isEmpty)

arr[0]+=10
print(arr)
arr[0...4]=[10,90,20,40]
arr
print(arr)

arr.insert(90, at: arr.count)
print(arr)

arr.remove(at: 4)
print(arr)

arr.removeAll()
print(arr)

arr=Array(repeating: 3, count: 10)
arr.removeLast()

for i in arr{
    print(i)
}

for (i,v) in arr.enumerated(){
    print("i \(i) , v \(v)")
}

*/
/// ##  Set
/*
var setChar = Set<Character>()
setChar = ["a","b","a"]

/// - Creating a Set with an Array Literal

var setInt:Set<Int> = [1,2,2,2,3,3,3,4,4,4,5]
setInt

var setString:Set = ["India","India","Austrila"]
type(of: setString)

/// it will be interpreduct as Array
let setTest = [10,20,30]
type(of: setTest)

/// - Accessing and Modifying a Set

setChar.count
setChar.isEmpty
setChar.insert("d")
setChar.insert("d")
setChar
setChar.remove("d")
setChar

setChar.contains("d")
setChar.contains("a")

/*
 for char in setChar{
    print(char)
}
*/
/*
for char in setChar.sorted(){
    print(char)
}
*/

var a:Set = [1,2,3,4,5]
var b:Set = [3,4,5,6,7]
var c:Set = [1,2,5,6,9]


/// Performing Set Operations
/*
print("a union b \(a.union(b))")
print("a intersection b \(a.intersection(b))")
print("a symmetricDifference b \(a.symmetricDifference(b))")
print("a substracting b \(a.subtracting(b))")
*/



let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true”
*/
/// ## Dictionaries








//: [Next](@next)
