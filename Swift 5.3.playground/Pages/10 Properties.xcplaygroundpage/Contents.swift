//: [Previous](@previous)

/// - Properties

struct FixedLengthRange{
    var start:Int
    let length:Int
}

var fixedLengthRange = FixedLengthRange(start:0,length:4)
//print(fixedLengthRange)
fixedLengthRange.start = 20
//print(fixedLengthRange)

let fixedLengthConst = FixedLengthRange(start:1,length:4)
//print(fixedLengthConst)

//fixedLengthConst.start = 39
//print(fixedLengthConst)


/// -- A lazy stored property is a property whose initial value is not calculated until the first time it is used
/// -- it is not tread safe

class TestLazyLoading{
    lazy var i = show()
    var j = "Hello"
}

func show(){
    print("Hey ")
}

var t = TestLazyLoading()
t.i
t.j



























































//: [Next](@next)
