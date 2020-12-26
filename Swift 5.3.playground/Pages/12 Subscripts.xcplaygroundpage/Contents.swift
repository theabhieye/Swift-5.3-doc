//: [Previous](@previous)
/// # Subscripts

struct TimesTable {
    let multipiler:Int
    subscript(index:Int) -> Int {
        return multipiler * index;
    }
}

let fourMultiple = TimesTable(multipiler:4)
fourMultiple[100]



struct Matrix {
    let rows,columns:Int
    var arr:[Int]
    
    init(row:Int,column:Int) {
        self.rows = row
        self.columns = column
        arr = Array(repeatElement(0, count: row*column))
    }
    
    func isValidIndex(row i:Int,column j:Int) -> Bool {
        return (i>=0 && i<rows) && (j>=0 && j<columns)
    }
    
    subscript(row:Int,column:Int) -> Int {
        get{
            assert(isValidIndex(row: row, column: column),"Invalid index")
            return arr[(row*column) + column]
        }
        set{
            assert(isValidIndex(row: row, column: column),"Invalid index")
            arr[(row*column) + column] = newValue;
        }
    }
}

var matrix = Matrix(row: 2, column: 2)
matrix[0,0] = 20
matrix[0,0]

enum Planets:Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    
    static subscript(n:Int) -> Planets{
        get{
            return Planets(rawValue: n)!
        }
    }
}

var p = Planets[5]
p












































































//: [Next](@next)
