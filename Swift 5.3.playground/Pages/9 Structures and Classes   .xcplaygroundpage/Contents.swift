//: [Previous](@previous)
 /// - Struct and class

struct SomeStruct{
    
}

class SomeClass{
    
}

struct Resolation{
    var width:Int = 0
    var height:Int = 0
}

class VideoMode{
    var resolation:Resolation = Resolation()
    var frameRate:Double = 0.0
    var name:String?
}


var someResolation = Resolation()
var someVideoMode = VideoMode()

//print(someResolation.height)
//print(someVideoMode.resolation.width)

someResolation.width = 1080
someResolation.width

var vha =  Resolation(width:200,height:299)
//vha.width
//vha.height

/// - Value type
var cinema = vha
//print(cinema.height)
//print(cinema.width)
cinema.height = 2008
cinema.width = 2001
//print(cinema)

enum Dir:Int{
    case north,south,east,west
    mutating func turnNorth(){
        self = .north
    }
}

var d=Dir.south
d
d.turnNorth()

/// - Class as a Reference type

var hd = Resolation(width: 1000, height: 1090)

var videoFormat=VideoMode()
videoFormat.resolation = hd
videoFormat.frameRate = 0.25
videoFormat.name = "new Video Format 01"

print(videoFormat.frameRate)

/// - copy reference
var oneVideoFormat = videoFormat
oneVideoFormat.frameRate = 90
print(oneVideoFormat.frameRate)
print(videoFormat.frameRate)


var twoVideoFormat = VideoMode()
twoVideoFormat.frameRate = 0.10
twoVideoFormat.name = "Two video format"
twoVideoFormat.resolation = Resolation(width: 400, height: 402)

print(oneVideoFormat===videoFormat)
print(twoVideoFormat===oneVideoFormat)
















//: [Next](@next)
