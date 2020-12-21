import UIKit
/// # The_Basic
/***
///## Constant
let PI = 3.14;
//PI=2.1;

///## Variable
var x=10;
x=20;

/// ## Type Annotations

var str: String;
str="Hello";

var str1,str2,str3: String;
var red,green,blue: Double;

/// >  Constant and variable names can contain almost any character, including Unicode
/// > charactersConstant and variable names can’t contain whitespace characters, mathematical symbols, arrows, private-use Unicode scalar values, or line- and box-drawing characters. Nor can they begin with a number, although numbers may be included elsewhere within the name.

let 👻=4;

var x1=10,x2=20,x3=30;

/// ## Keyword as varible goaround
var `var` = 10;
//print(`var`)

/// ## Printing Constants and Variables

/// print(_ items: Any..., separator: String = " ", terminator: String = "\n")
/// - Parameters:
///   - items: Zero or more items to print.
///   - separator: A string to print between each item. The default is a single
///     space (`" "`).
///   - terminator: The string to print after all items have been printed. The
///     default is a newline (`"\n"`).
//print(x1,x2,x3,separator:"__",terminator:"\t");

/// ## String interpolation
//print("x1=\(x1)","x2=\(x2)",separator:" ")


/// ### Integer

// - Integer are of 8 bit , 32 bit
// Unsign Integer of 8 bit can be written as UInt8


//print(UInt32.max,UInt32.min,Int.min,Int.max)

// -- Type Interface = “Type inference enables a compiler to deduce the type of a particular expression automatically when it compiles your code, simply by examining the values you provide.” Example
/*
 var i = 10.0;
 print(type(of: i));
*/
/*
 :: NOTE: A constant must be either Type Annotations or intialized.
let j: Int;
j = 20;
print(j)
*/

/*** ## Integer Literal
 - Binary(0-1) number prefix with 0b.
 - Octal(0-7) number prefix with 0o.
 - Hexadecimal(0-9,A-F) prefix with 0x.
*/
var c = 0b011;
c=0o3
c=0x3

/**
 - 1.25e2 means 1.25 x 102, or 125.0.
 - 1.25e-2 means 1.25 x 10-2, or 0.0125.

 */
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

/// - Padding numerical number
var x=0010
x=10_0_000

var d = 10_000_000.0_00_1


//var c = UInt8.min-1; // overflow
//var c = Int8.max+1;

var num1:UInt8 = 10;
var num2:Int32 = 20;
var sum = Int32(num1)+num2
type(of: sum)

/// ##Type Aliases
typealias AudioFile=Int64;

var i: AudioFile;
type(of: i)

/// ### Boolean
var i=true
// We dont create constant with boolean as we never need to change that

/// ### Tuples

var person=("abhishek",20);
type(of: person)
let (name,age)=person
name
age
let (_,a)=person
a
person.0
person.1
person.0 = "meenu"

var person2=(name:"Abhi",rollNo:1,mark:40);
person2.0
person2.1
person2.name
person2.rollNo
person2.mark

let possibleValue1 = "1232"
let possibleValue2 = "1sadfasfd"
let mayBeInt1 = Int(possibleValue1)
let mayBeInt2 = Int(possibleValue2)

///  ### Optional

var data: Int?;
data;
data = 20;
if data != nil {
//    print(data) = Optional(20)
    print(data!)
}
/// -- We don't need to force wrap if we use following syntax
data = nil
if let x = data {
    print(x)
}
else{
    print("data contain nil")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
/// ## Error Handling

do {
    try{
//        can throw error
    }
    catch Error{
        
    }
}

///  ## Assert
/*
 /** NOT WORKING
let age = -3
assert(age >= 0, "A person's age can't be less than zero.")

assert(1<2,"this is false")
 
 END OF Chapter 1
 */*/*/

/// <hr>



//: [Next](@next)
