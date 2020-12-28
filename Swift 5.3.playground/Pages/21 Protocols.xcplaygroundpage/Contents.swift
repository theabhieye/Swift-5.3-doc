//: [Previous](@previous)
/// # Protocols

protocol SomeProtocol {
    var mustBeSettable: Int { get set }
    var doesNotNeedToBeSettable: Int { get }
}


protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName: String
}

let abhi = Person(fullName: "Abhishek kapoor")

class StarShip: FullyNamed{
    var prefix:String?
    var name:String
    var fullName:String {
        get {
            return (prefix != nil ? prefix! + " " : "") + name
        }
    }
    init(name:String , prefix:String?) {
        self.name = name
        self.prefix = prefix
    }
}
var person = StarShip(name:"Abhishek",prefix:"Mr")
person.fullName


protocol RandomNumberGenerator{
    func random() -> Double
}

class LinearCongruentialGenerator:RandomNumberGenerator{
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c)
            .truncatingRemainder(dividingBy:m))
        return lastRandom / m
    }
}

let randomNumber = LinearCongruentialGenerator()
randomNumber.random()
randomNumber.random()
randomNumber.random()

protocol Toggle {
    mutating func toggle()
}

enum OnOffSwitch:Toggle{
    case off,on
    mutating func toggle()  {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}

var lighOnOffSwitch = OnOffSwitch.on
lighOnOffSwitch.toggle()
lighOnOffSwitch.toggle()
lighOnOffSwitch.toggle()
lighOnOffSwitch.toggle()




struct Vector3D: Equatable {
    var x = 0.0, y = 0.0, z = 0.0
}

let twoThreeFour = Vector3D(x: 2.0, y: 3.0, z: 4.0)
let anotherTwoThreeFour = Vector3D(x: 2.0, y: 3.0, z: 4.0)
if twoThreeFour == anotherTwoThreeFour {
    print("These two vectors are also equivalent.")
}


enum SkillLevel: Comparable {
    case beginner
    case intermediate
    case expert(stars: Int)
}
var levels = [SkillLevel.intermediate, SkillLevel.beginner,
              SkillLevel.expert(stars: 5), SkillLevel.expert(stars: 3)]
for level in levels.sorted() {
    print(level)
}



protocol Named {
    var name: String { get }
}
protocol Aged {
    var age: Int { get }
}
struct Person: Named, Aged {
    var name: String
    var age: Int
}
func wishHappyBirthday(to celebrator: Named & Aged) {
    print("Happy birthday, \(celebrator.name), you're \(celebrator.age)!")
}
let birthdayPerson = Person(name: "Abhishek", age: 21)
wishHappyBirthday(to: birthdayPerson)


/*
extension Collection where Element: Equatable {
    func allEqual() -> Bool {
        for element in self {
            if element != self.first {
                return false
            }
        }
        return true
    }
}
let equalNumbers = [100, 100, 100, 100, 100]
let differentNumbers = [100, 100, 200, 100, 200]



print(equalNumbers.allEqual())

print(differentNumbers.allEqual())


*/














//: [Next](@next)
