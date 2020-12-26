//: [Previous](@previous)
/// # Methods

class Counter {

    
    var count:Int
    
    /// - self property === this property
    init(){
        self.count = 0
    }
    
    func increnment(){
        self.count+=1
    }
    
    func increnmentByValue(increseBy i:Int) {
        self.count+=i
    }
    
    func reset(){
        self.count = 0
    }
    
    static func info(){
        print("This method give funcionlity of counter")
    }
}

var c = Counter()
c.count
c.increnment()
c.increnmentByValue(increseBy: 3)
c.count
Counter.info()

struct Point{

    var x:Int
    var y:Int

    init() {
        x = 0
        y = 0
    }
    init(x:Int, y:Int) {
        self.x = x
        self.y = y
    }
    
    
    func isOnTheRightOf(x:Int) -> Bool {
        return self.x > x
    }
    
    /// - to update the value of property we use mutating keyword to make able to change its value in STRUCT and ENUM.
    mutating func updateXY(x:Int,y:Int){
        self.x = x
        self.y = y
    }

    mutating func moveBy(x:Int,y:Int){
        self.x += x
        self.y += y
    }
   
    /// - Assigning new memory location of point to self.
    mutating func moveByAlt(x:Int,y:Int){
        self = Point(x:self.x+x,y:self.y+y)
    }
}

var point = Point(x:10,y:10)
point.isOnTheRightOf(x: 8)
point.updateXY(x: 20, y: 20)
point.moveBy(x: 3, y: 4)
//print(point)
point.moveBy(x: -3, y: -4)
//print(point)

var point1 = Point()
//print(point1)


enum TriStateSwitch{
    case high,low,off
    init() {
        self = .off
    }
    mutating func next(){
        
        switch self {
        
            case .high :
                self = .low
            
            case .low :
                self = .off
            
            case.off :
                self = .high
        }
    }
    
}


var oven:TriStateSwitch
oven = TriStateSwitch()
oven.next()
oven


struct LevelTracker{
    
    static var highestLevel:Int = 1
    var currentLevel = 0
    
    static func unlockLevel(_ level:Int)  {
        highestLevel = max(highestLevel, level)
    }
    
    static func isUnlocked(_ level:Int) -> Bool{
        return level <= highestLevel
    }
    
    @discardableResult
    mutating func advanceTo(_ level:Int) -> Bool{
        if(LevelTracker.isUnlocked(level)){
            currentLevel = level
            return true
        }
        return false
    }
    
}


class Player{
    
    let name:String
    var tracker = LevelTracker()
    
    init(name:String) {
        self.name = name
    }
    
    func complete(level:Int )  {
        LevelTracker.unlockLevel(level+1)
         tracker.advanceTo(level+1)
    }
}


var player = Player(name: "Argyrios")
player.complete(level: 1)
print("highest unlocked level is now \(String(describing: LevelTracker.unlockLevel))")

player = Player(name: "Beto")
if player.tracker.advanceTo(6) {
    print("player is now on level 6")
} else {
    print("level 6 has not yet been unlocked")
}

































































































































//: [Next](@next)
