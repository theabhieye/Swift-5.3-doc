//: [Previous](@previous)
/// # Initialization

struct Fahrenheit{
    var temprature:Double
    init() {
        temprature = 32.0
    }
}
var f = Fahrenheit()
f.temprature

struct Celsius {
    var temprature:Double
    init(_ celsius:Double) {
        temprature = celsius
    }
    init(fromFahrenheit fahrenheit:Double){
        temprature = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin Kelvin:Double) {
        temprature = Kelvin - 273.15
    }
}
let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
boilingPointOfWater.temprature

let freezingPointOfWater = Celsius(fromKelvin: 273.15)
freezingPointOfWater.temprature

let boilingPointOfWaterCel = Celsius(100)
boilingPointOfWaterCel.temprature

struct Color {
    var red,green,blue:Double
    init(red:Double ,green:Double ,blue:Double){
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white:Double) {
        self.red = white
        self.green = white
        self.blue = white
    }
}

let megenta = Color(red:1.0 , green:0,blue:1.0)
let halfGray = Color(white:0.5)


class SurveryQuestion{
    var question:String
    var response:String?
    init(_ q:String) {
        self.question = q
    }
    func ask()  {
        print(question)
    }
}

var chessQuestion = SurveryQuestion("Do you like Cheese ?")
//chessQuestion.ask()
chessQuestion.response = "Yes\n"
chessQuestion.response

struct Size {
    var width = 0.0 , height = 0.0
}

var s = Size(width:20)
s.width
s.height
var s1 = Size(width:20,height:20)
s1.width
s1.height










//: [Next](@next)
