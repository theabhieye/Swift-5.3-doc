//: [Previous](@previous)

/*
 enum CompassEnum {
    case north
    case south
    case east
    case west
}
enum CompassEnum1 {
    case north,south,east,west
}

var directionToHead = CompassEnum.west
directionToHead = .east

// Enumeration Values with a Switch Statement

directionToHead = .west
switch directionToHead {
    case .east:
        print("East")
    case .south:
        print("South")
    case .west:
        print("West")
    case .north:
        print("North")
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let somePlanet = Planet.earth
switch somePlanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}

/// - Iterating over Enumeration Cases


enum Planet1:CaseIterable {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

for i in Planet1.allCases{
    print(i)
}

enum Walking{
    case direction(Int,Int,Int,Int)
    case distance(Int)
}
var dir = Walking.direction(10,20,20,40)

print(dir)
 


enum Number:Int {
    case hundred = 100
    case thousand = 100_0
    case tenThousand = 100_00
    case lakh = 100_000
}

var n = Number.hundred
print(n)

/// - Implicitly Assigned Raw Values
*/
/// Not Giving Expectes result
enum num:Int {
    case one=1,two,three,four,five
}

enum Planet2: Int {
    case mercury = 1, venus=2, earth, mars, jupiter, saturn, uranus, neptune
}

enum CompassPoint: String {
    case north, south, east, west
}

CompassPoint.north.rawValue
Planet2.mercury.rawValue


enum Number:Int {
    case hundred = 100
    case thousand = 100_0
    case tenThousand = 100_00
    case lakh = 100_000
}

var n = Number.hundred.rawValue
print(n)

var mayBePlanet2 = Planet2(rawValue:7)

/// ???
/// - Recursive Enumerations



//: [Next](@next)
