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
    lazy var i: () = show()
    var j = "Hello"
}

func show(){
    print("Hey ")
}

var t = TestLazyLoading()
//t.i
t.j

struct Point{
    var x:Double = 0.0
    var y:Double = 0.0
}
struct Size {
    var width = 0.0,height = 0.0
}

struct Rect{
    var origin:Point  = Point()
    var size:Size = Size()
    var center: Point{
        get{
            let centerX = origin.x + ((size.width)/2)
            let centerY = origin.y + ((size.height)/2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter){
            origin.x = newCenter.x + ((size.width)/2)
            origin.y = newCenter.y + ((size.height)/2)
        }
    }
}

struct Rect1{
    var origin:Point  = Point()
    var size:Size = Size()
    var center: Point{
        get{
            let centerX = origin.x + ((size.width)/2)
            let centerY = origin.y + ((size.height)/2)
            return Point(x: centerX, y: centerY)
        }
///--     we get data in newValue when we dont receive argunment in setter method
        set{
            origin.x = newValue.x + ((size.width)/2)
            origin.y = newValue.y + ((size.height)/2)
        }
    }
}


var square = Rect1(origin: Point(x: 0.0, y: 0.0),size: Size(width: 20.0, height: 20.0))
square.origin.x
square.origin.y
square.center.x
square.center.y
square.size.height
square.size.width

square.center = Point(x: 20, y: 20)
square.origin.x
square.origin.y
square.center.x
square.center.y
square.size.height
square.size.width


/// Raad only values

struct Cuboid{
    var length=0.0,height=0.0,width=0.0;
    var volume:Double {
        get {
            return length * height * width
        }
    }
}
var c = Cuboid(length: 30, height: 30, width: 30)
c.volume
//print(c)


/// - Property Observers
struct StepCounter{
    var totalSteps:Int = 0 {
        willSet(newTotalStep){
            print("About to set total step as \(newTotalStep)")
        }
        didSet{
            if totalSteps>oldValue {
                print(oldValue)
                print("Just set total steps as \(totalSteps)")
            }
        }
    }
}
var sc = StepCounter()
//sc.totalSteps = 20
//sc.totalSteps

/// - Property Wrappers

@propertyWrapper
struct TwelveOrLess {
    private var number1:Int
    init() {
        self.number1 = 0
    }
    var wrappedValue:Int{
        set{
            number1 = min(12, newValue)
        }
        get{
            return self.number1
        }
    }
}
var twelve = TwelveOrLess()
twelve.wrappedValue = 23
twelve.wrappedValue


class SmallRectangle{
    @TwelveOrLess var height:Int
    @TwelveOrLess var weight:Int
}

var rectangle = SmallRectangle()
rectangle.height
rectangle.height = 100
rectangle.height

rectangle.weight
rectangle.weight = 100
rectangle.weight


/// without using @TwelveOrLess
struct SmallRectangle2{
    private var _height = TwelveOrLess()
    private var _weight = TwelveOrLess()
    var height:Int{
        get{ _height.wrappedValue }
        set{ _height.wrappedValue = newValue }
    }
    var weight:Int{
        get{ _weight.wrappedValue }
        set{ _weight.wrappedValue = newValue }
    }
}
var rectangle2 = SmallRectangle2()
rectangle2.height
rectangle2.height = 20
rectangle2.height

rectangle2.weight
rectangle2.weight = 10
rectangle2.weight


/// --- “Setting Initial Values for Wrapped Properties”

@propertyWrapper
struct SmallNumber{

    private var maxinum:Int
    private var num:Int
   
    var wrappedValue:Int{
        get{
            num
        }
        set{
            self.num = min(newValue, maxinum)
        }
    }
    
    init(){
        num = 0
        maxinum = 12
    }
    
    init(wrappedValue:Int)
    {
        maxinum = 12
        self.num = min(wrappedValue, maxinum)
    }
    init(wrappedValue:Int,maxinum:Int){
        self.maxinum = maxinum
        num = min(wrappedValue, maxinum)
        
    }
}
var sm = SmallNumber()
sm.wrappedValue = 7
//print(sm.wrappedValue)

var sm2 = SmallNumber(wrappedValue: 90,maxinum: 30)
//print(sm2.wrappedValue)

struct ZeroRectangle{
    
    @SmallNumber(wrappedValue: 0, maxinum: 20)
    var height:Int
    
    @SmallNumber var weight:Int
}
var zeroRec = ZeroRectangle()
zeroRec.height = 20
zeroRec.height



struct ZeroRectangle1{
    @SmallNumber var height:Int = 2
    @SmallNumber(maxinum: 10) var weight:Int = 12
}
var zeroRec1 = ZeroRectangle1()
//zeroRec.height = 20
zeroRec.height
zeroRec1.weight

// “Projecting a Value From a Property Wrapper”


@propertyWrapper
struct SomeSmallNumber{
    private var num:Int
    private var max:Int
    var projectedValue:Bool
    
    init(){
        self.num = 0
        self.max = 12
        self.projectedValue = false
    }
    
    var wrappedValue:Int{
        get{
            num
        }
        set{
            if(newValue > max){
                num = max
                projectedValue = true
            }
            else{
                num = newValue
                projectedValue = false
            }
        }
    }
}

struct SomeSmallNumberImpl{
    @SomeSmallNumber var num
}

var ssn = SomeSmallNumberImpl()
ssn.num
ssn.$num

ssn.num = 20
ssn.num
ssn.$num


/// -  Static values examples
struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}
enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 6
    }
}
class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    class var overrideableComputedTypeProperty: Int {
        return 107
    }
}

print(SomeStructure.storedTypeProperty)
SomeStructure.storedTypeProperty = "Another value."
print(SomeStructure.storedTypeProperty)
print(SomeEnumeration.computedTypeProperty)
print(SomeClass.computedTypeProperty)














//: [Next](@next)
