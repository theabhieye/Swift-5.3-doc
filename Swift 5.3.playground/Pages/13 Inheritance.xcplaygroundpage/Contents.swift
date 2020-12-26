//: [Previous](@previous)
/// # Inheritance


class Vehicle {
    var currentSpeed = 0.0
    
    var description:String{
        return "Traveling at speed \(currentSpeed) Km/h"
    }
    
    func makeNoise()  {
        
    }
    
}
let someVehicle = Vehicle()
someVehicle.description

class Bicycle:Vehicle {
    var hasBasket = false
    
}

let bicycle = Bicycle()
bicycle.hasBasket
bicycle.hasBasket = true
bicycle.hasBasket
bicycle.currentSpeed = 20.0
bicycle.description

class Tandem:Bicycle{
    var currentNumberOfPassenger = 0
}

var tandem = Tandem()
tandem.currentNumberOfPassenger = 2
tandem.currentSpeed = 30.0
tandem.hasBasket = true
tandem.description


/// ## Overriding

class Train:Vehicle{
    override func makeNoise(){
        print("choo choo")
    }
}

var train = Train()
train.makeNoise()

class Car:Vehicle{
    var gear:Int = 1
    override var description:String{
        return super.description + " & is in \(gear) gear"
    }
}

var car = Car()
car.currentSpeed = 40
car.gear = 2
print(car.description)


/// Overriding Property Observers
class AutomaticeCar:Car {
    override var currentSpeed:Double{
        didSet {
            gear = Int(currentSpeed/10.0)+1
        }
    }
}
var automaticeCar = AutomaticeCar()
automaticeCar.currentSpeed = 2
print(automaticeCar.description)



/// Preventing Overrides
/// add final as a prefix to any func var subscript and then compiler will not able to overwrite the respected  func var subscript 




































































































































































































































//: [Next](@next)
