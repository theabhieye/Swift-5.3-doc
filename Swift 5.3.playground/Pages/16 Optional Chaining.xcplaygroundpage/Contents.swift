//: [Previous](@previous)
/// # Optional Chaining

class Person1{
    var residence:Residence0?
}

class Residence0{
    var numberOfRoom:Int = 1
}

var person = Person1()

/// - Fatal error: Unexpectedly found nil while unwrapping an Optional value: file __lldb_expr_5/16 Optional Chaining.xcplaygroundpage, line 9

// person.residence!.numberOfRoom

//if let roomCount = person.residence?.numberOfRoom {
//    print("Number of room \(roomCount)")
//} else {
//    print("Unable to rectrive room")
//}
//
//person.residence = Residence0()
//if let roomCount = person.residence?.numberOfRoom {
//    print("Number of room \(roomCount)")
//} else {
//    print("Unable to rectrive room")
//}



class Person{
    var residence:Residence?
}
class Residence{
    var room = [Room]()
    var numberOfRoom:Int{
        return room.count
    }
    subscript(i:Int) -> Room{
        get{
            room[i]
        }
        set{
            room[i] = newValue
        }
    }
    func printNumberOfRoom(){
        print("Number of room \(numberOfRoom)")
    }


    var address:Address?
    
}
class Room{
    let name:String
    init(name:String) {
        self.name = name
    }
}

class Address{

    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String?{
        if let buildingNumber = buildingNumber,let street = street{
            return "\(buildingNumber) \(street)"
        } else if buildingName != nil {
            return "\(String(describing: buildingName))"
        } else {
            return nil
        }
    }
    
}

let person1 = Person()


if let roomCount = person1.residence?.numberOfRoom {
    print("Total number of room \(roomCount)")
} else{
    print("Unable to identify number of room")
}


func createAddress() -> Address {
    
    print("Function called to set address")
    let someAddress = Address()
    
    someAddress.buildingNumber = "29"
    someAddress.street = "Acacia Road"
   
    
    return someAddress
}

/// Note :- “The assignment is part of the optional chaining, which means none of the code on the right-hand side of the = operator is evaluated.”


person1.residence?.address = createAddress()

if person1.residence?.printNumberOfRoom() != nil {
    print("it is possible to called printNumberofroom")
} else{
    print("it is NOT possible to called printNumberofroom")
}

if(person1.residence?.address = createAddress()) != nil {
    print("We can set address")
} else{
    print("It is not possible to set address by this way")
}

if let roomName = person1.residence?[0].name {
    print("First room name \(roomName)")
} else {
    print("Unable to find name")
}

/// “This subscript setting attempt also fails, because residence is currently nil.”

person1.residence?[0] = Room(name: "Bathroom")

let person1House = Residence()

person1House.room.append(Room(name: "Living Room"))
person1House.room.append(Room(name: "Bedroom"))

person1.residence = person1House


if let room = person1.residence?[0].name {
    print("\(room)")
} else {
    print("unable to find room")
}





var testScores = ["Dave": [86, 82, 84], "Bev": [79, 94, 81]]
testScores["Dave"]?[0] = 91
testScores["Bev"]?[0] += 1
testScores["Brian"]?[0] = 72

testScores


if let street = person1.residence?.address?.street {
    print("\(street)")
} else {
    print("dont have value")
}
 

var person1Address = Address()
person1Address.street = "govind Nagar"
person1Address.buildingName = "Abhi"
person1Address.buildingNumber = "11a"
person1.residence?.address = person1Address

if let street = person1.residence?.address?.street {
    print("\(street)")
} else {
    print("dont have value")
}


if let building = person1.residence?.address?.buildingIdentifier() {
    print("person1 build \(building)")
}

if let beginsWithThe =
    person1.residence?.address?.buildingIdentifier()?.hasPrefix("The") {
    if beginsWithThe {
        print("person1's building identifier begins with \"The\".")
    } else {
        print("person1's building identifier does not begin with \"The\".")
    }
}

//: [Next](@next)
