//: [Previous](@previous)

/// # Function
/*
func greet(name:String) -> String {
    return "Hello ,\(name). Welcome here "
}
//print(greet(name:"Abhishek"))


func sayHello(){
    print("Hello , Everyone")
}
//sayHello()

func sayHello(name:String){
    print("Hello , \(name)")
}
//sayHello(name:"Aa")

func sayHello(name:String)->String{
    return "hi \(name)"
}
let _:String = sayHello(name:"abhi")


func nameCount(name str:String) -> (message:String,count:Int){
    return ("Hello Champ \(str)",str.count)
}
//print(nameCount(name:"Ak").message)
//print(nameCount(name:"Ak").count)

//print(addTwoNumber(20,20))


func add(num1 n1:Int,num2 n2:Int) -> Int{
    return n1+n2
}
//print(add(num1:10,num2:20))
 
func addAll(_ nums:Int...)-> Int{
    var sum=0
    for n in nums{
        sum+=n
    }
     return sum
}
//print(addAll(1,2,3,4,5,6,7,8,10))

/// - inout

func swap(_ n1:inout Int,_ n2: inout Int){
    let t = n1
    n1=n2
    n2=t
}

var a = 10
var b = 20
swap(&a,&b)
a
b

*/
//func add(_ n1:Int,_ n2:Int)-> Int{
//    return n1+n2
//}
//var mathAddFunc:(Int,Int)->Int = add
//print(mathAddFunc(39,1))
//

/// How to do it when we label in parameter type
//func add1(num1 n1:Int,num2 n2:Int) -> Int{
//    return n1+n2
//}
//var mathAddFuncArg:(Int,Int)->Int = add1
//
//print(mathAddFuncArg(n1:200,n2:399))

/// Passing function as a argunment
/*
func printHello(){
    print("Hello ")

}

func funcInFunc(_ func1:(),name:String){
    func1
    print(name)
}
funcInFunc(printHello(),name:"Abhi")
 */
//func increnment(_ i:Int)->Int{
//    return i+1
//}
//func decrenment(_ i:Int)->Int{
//    return i-1
//}
//func stepper(_ increase:Bool,j:Int)  ->  Int{
//    return increase ? increnment(j):decrenment(j)
//}
//print(stepper(true,j:10))
//
//func stepper1(_ inc:Bool,j:Int) -> Int{
//    return inc ? ({ return j+1 })():({return j-1})();
//}
//
//print(stepper1(true,j:23))


func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}
var a = chooseStepFunction(backward: true)
a(1)




//var dir:[String:String]=[:]
//
//func sayHi(){
//    guard (dir["name"] != nil) else{
//        print("No name")
//        return
//    }
//    print(dir["name"])
//    print("hi")
//}
//
//sayHi()


//func someFunctionThatTakesAClosure(closure: () -> Void) {
//    print("someFunctionThatTakesAClosure")
//}
//
//someFunctionThatTakesAClosure(closure: {
//    print("147")
//})

func test(i:Int){
    print(i)
}
var x = test
print(x(12))


//: [Next](@next)
