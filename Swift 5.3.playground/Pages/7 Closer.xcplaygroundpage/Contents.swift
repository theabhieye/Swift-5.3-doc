//: [Previous](@previous)

/// # Closer

var name = ["Z","D","R","A","B","F"]
name.sorted()
name

func reverseSort(_ s1:String,_ s2:String) -> Bool{
    return s1>s2
}
name.sorted(by: reverseSort)
name
name.sorted()


name.sorted(by:{(s1:String ,s2:String ) -> Bool in return s1>s2})
name
 

/// - Inferring Type From Context

name.sorted()
name.sorted(by: {s1,s2 in return s1>s2})
name


/// - Shorthand Argument Names
name.sorted()
name.sorted(by: {$0 > $1})
name

/// - Operator Methods
name.sorted()
name.sorted(by: >)
name

/// : To-Understand
/// - Trailing Closures




/// Closeres
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

/// Copy of runningTotal is create for each property
var increaseBy10 = makeIncrementer(forIncrement: 10)
print(increaseBy10())
print(increaseBy10())
print(increaseBy10())

var increaseBy7 = makeIncrementer(forIncrement: 7)
print(increaseBy7())
print(increaseBy7())


print(increaseBy10())

/// Escaping Closures











//: [Next](@next)
