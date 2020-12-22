//: [Previous](@previous)
/// # Control Flow

/// - For in loop

var name:[String] = ["abhi","abhishek","Ravi","Rakesh"]
var number = [1:"one",2:"two",3:"three"]

//for n in name{
//    print("Hello \(n)")
//}

//for (num,val) in number{
//    print("\(num) = \(val)")
//}

//for i in 1...10{
//    print("2 X \(i) = \(2*i)")
//}

//for _ in 1...4{
//    print("Hello")
//}

//for i in 0..<4{
//    print(i)
//}

//for i in stride(from: 0, to: 60, by: 5)
//{
//    print(i, separator: " ", terminator: " ")
//}
//

/// - While loop

var i = 1;
//while i<=10 {
//    print(i, separator: "", terminator: " ")
//    i+=1;
//}
i = 0
//repeat {
//    print(i, separator: "", terminator: " ")
//    i+=1
//}while i<10



/// -  Control Statement
//i = 10
//if i%2==0{
//    print("Even")
//}
//else{
//    print("Odd")
//}

//i = 1
//if(i<0){
//    print("\(i) is negative number")
//} else if(i>0){
//    print("\(i) is postive number")
//}else{
//    print("\(i) ")
//}
//i = 2
//switch i {
//case 0:
//    print(i)
//case 1:
//    print(i)
//case 2:
//    print(2)
//case 3,4,5,6,7,8,9:
//    print("Single digit number")
//default:
//    print("Not a number")
//}

//i = 3000
//switch i {
//case 0..<10:
//    print("Single digit number")
//case 10..<100:
//    print("Double digit number")
//case 100..<1000:
//    print("Trible digit number")
//default:
//    print("Not a Single,Double,Trible digit number")
//}

//let somePoint = (1, 1)
//switch somePoint {
//case (0, 0):
//    print("\(somePoint) is at the origin")
//case (_, 0):
//    print("\(somePoint) is on the x-axis")
//case (0, _):
//    print("\(somePoint) is on the y-axis")
//case (-2...2, -2...2):
//    print("\(somePoint) is inside the box")
//default:
//    print("\(somePoint) is outside of the box")
//}


/// -  Value Binding
//let anotherPoint = (2, 0)
//switch anotherPoint {
//case (let x, 0):
//    print("on the x-axis with an x value of \(x)")
//case (0, let y):
//    print("on the y-axis with a y value of \(y)")
//case let (x, y):
//    print("somewhere else at (\(x), \(y))")
//}

//let yetAnotherPoint = (1, -1)
//switch yetAnotherPoint {
//    case let (x, y) where x == y:
//        print("(\(x), \(y)) is on the line x == y")
//    case let (x, y) where x == -y:
//        print("(\(x), \(y)) is on the line x == -y")
//    case let (x, y):
//        print("(\(x), \(y)) is just some arbitrary point")
//}
//


/// - continue
//for i in 1...10{
//    if i%2 != 0{
//        continue
//    }
//    print("\(i) is even")
//}

/// - fallthrough “If you need C-style fallthrough behavior, you can opt in to this behavior on a case-by-case basis with the fallthrough keyword.”
 
//i = 20
//switch i {
//case 0..<10:
//    print("Single digit number")
//    fallthrough
//case 10..<100:
//    print("Double digit number")
//    fallthrough
//case 100..<1000:
//    print("Trible digit number")
//    fallthrough
//default:
//    print("Not a Single,Double,Trible digit number")
//}

/// - break


//for i in 1...20{
//    if(i==4){
//        break
//    }
//    print(i)
//}

/// - Label
//outerLoop:for i in 1...5{
//    innerLoop:for j in 1...i{
//        print(j, separator: "", terminator: " ")
//        if(j==2){
//            break outerLoop
//        }
//    }
//}

/// - Early Exit


func greet(nameArg:String?) {
    guard let name = nameArg else {
        print("Name is not avaliable")
        return
    }

    print("Hello \(name)!")

}
var n:String? = "Abhishek"
greet(nameArg: nil)

//: [Next](@next)
