//: [Previous](@previous)

/// 1. [link](@https://leetcode.com/problems/running-sum-of-1d-array/)
/*
 var nums = [1,2,3,4]

var arr = nums
for i in 1..<arr.count{
   arr[i] = arr[i-1]+arr[i]
}
print(arr)
*/

/// 2. Calculate area and Circumference of a circle
/// formula:
///     circumference : 2 * π * r
///     area :  π * r * r
/// constants π = 22/7 ≈ 3.14
/*
 struct Circle{
    var radius:Double
    private let PI:Double = 3.14
    var area:Double {
        get{
            PI * radius * radius
        }
    }
    var circumference:Double{
        get{
            2 * PI * radius
        }
    }
}
var circle = Circle(radius: 10)
print(circle.circumference)
print(circle.area)
print(circle)
*/


/// 3. Check Is Number is Odd or even
/*
var number = 10
if number%2 == 0 {
    print("\(number) is even")
}
else {
    print("\(number) is odd")
}
*/

/// 4. Print month name with month number
/*
func whichMonth(monthNumber n:Int) -> String{
    switch(n){
    case 1:
        return "Jan"
    case 2:
        return "Feb"
    case 3:
        return "March"
    case 4:
        return "April"
    case 5:
        return "May"
    case 6:
        return "June"
    case 7:
        return "July"
    case 8:
        return "Aug"
    case 9:
        return "Sept"
    case 10:
        return "Oct"
    case 11:
        return "Nov"
    case 12:
        return "Dec"
    default:
        return "Invalid number"
    }
}
print(whichMonth(monthNumber: 10))

*/

/// 5. Write a program to find max and second max out of 3 number
/*
func findMaxAndSecMax(number1 n1:Int,number2 n2:Int,number3 n3:Int) -> (max:Int,smax:Int)
{
    var max:Int
    var smax:Int
    if n1 > n2 {
        max = n1
        smax = n2
    } else {
        max = n2
        smax = n1
    }
    if n3 > max {
        smax = max
        max = n3
    }
    else {
        if n3 > smax {
            smax = n3
        }
    }
    return (max,smax)
}

print(findMaxAndSecMax(number1: 10, number2: 20, number3: 30))
*/

protocol MathAssignmentProtocol {
    func display1toN(upperLimit n:Int)
    func displayTable(number n:Int)
    func sum0toN(number n:Int) -> Int
//  @objc func xPowerN(x:Int,n:Int)
}

struct CompeletingAss:MathAssignmentProtocol{
   
    
    func display1toN(upperLimit n: Int) {
        for i in 1..<n{
            print(i,terminator:" ")
        }
        print()
    }
    
    func displayTable(number n: Int) {
        for i in 1...10{
            print("\(n) * \(i) = \(n*i)")
        }
    }
    
    func sum0toN(number n: Int) -> Int {
        var sum = 0
        for i in 1...n{
            sum=sum+i
        }
        return sum
    }
}

extension MathAssignmentProtocol {
    func calcuFact(n:Int) -> Int {
        if(n==1) {
            return 1
        }
        return n*calcuFact(n: n-1)
    }
}
var check = CompeletingAss()
check.display1toN(upperLimit: 11)
check.displayTable(number: 2)
print(check.sum0toN(number: 10))

check.calcuFact(n: 5)



func printAllDigit(num:inout Int){
    var rem:Int
    while num != 0 {
        rem = num % 10
        num = num / 10
        print(rem)
    }
}
var n = 545
printAllDigit(num: &n)







//: [Next](@next)
