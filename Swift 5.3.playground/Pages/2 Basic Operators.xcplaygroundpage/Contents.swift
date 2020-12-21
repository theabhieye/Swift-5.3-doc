//: [Previous](@previous)

/// ### Basic Opeators

/// 1.  Arithmetic Operators
var num1: Int
var num2: Int
var str1: String
var str2: String

num1 = 10
num2 = 20
str1 = "Hello ,"
str2 = "Abhishek "
let sum = num1 + num2
let mul = num1 * num2
let div = Double(num1) / Double(num2)
let sub = num1 - num2
let conc = str1 + str2

/// Remainder Operator
let rem = 9 % 40

/// Unary Minus Operator
num2 = -num1

/// Compound Assignment Operators
num1 += 2

/// 2. Comparison Operators
num1 = 10
num2 = 10

num1 == num2
num1 != num2
num1 >= num2
num1 > num2
num1 <= num2
num1 < num2

str2
str1 = "a"
str1 == "a"
str1 != "a"
let str = "abhi"
/// -  Tuple can be compare from left to right if && operater
(1,"abhi")<(2,str)

/*** -  If size of tupe is more then 7 then we have to implenment .
/// - To compare tuples with seven or more elements, you must implement the comparison operators yourself.
    /***
     <code>
        (1,2,3,4,5,6,7) > (1,2,3,4,5,6,7)
     </code>
     /// - Type '(Int, Int, Int, Int, Int, Int, Int)' cannot conform to 'Comparable'; only struct/enum/class types can conform to protocols
     */
 */


/// 3. Ternary Conditional Operator

var result = (1 > 2) ? ( 1 + 1 ) : ( 2 + 2 )

/// 4. Nil-Coalescing Operator
///“If the value of a is non-nil, the value of b is not evaluated.
///This is known as short-circuit evaluation.”


var a:String? = nil;
var res:String? = (a==nil) ? "" : a!;


///  nil-coalescing (??)
var colorDefault:String? = "red"
var userChoosedColor:String?
var color:String?

color = colorDefault ?? userChoosedColor
color = userChoosedColor==nil ? colorDefault : userChoosedColor

/// 4.  Range Operators
/*

 /// Closed Range Operator
    /*
    for i in 1...5{
        print(i,terminator:" ")
    }
    */
    
 /// Half Range Operator
    /*
     print("\nHalf Range Operator")

    for i in 1..<5{
        print(i,terminator:" ")
    }
     */
*/
/// one-sided rang
/*
var name = "Abhishek";
var arr:[Character] =  Array(name)
    /*
    for c in arr[..<4]{
        print(c, separator: " ", terminator: "")
    }

    print()
    */
 
    /*
    for c in arr[4...]{
        print(c, separator: " ", terminator: "")
    }
    */

     /*
        let range = ...3
        for c in arr[range]{
            print(c)
        }
    */
*/

/// 5. Logical Operator
/*
    var and = true && true
    and = true && false
    and = false &&  true
    and = false && false

    var or = true || true
    or = true || false
    or = false || true
    or = false || false

    var not = !true
    not = !false
*/


//: [Next](@next)
