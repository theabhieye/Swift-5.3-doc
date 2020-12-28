//: [Previous](@previous)

/// # Error Handling
enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

//throw VendingMachineError.insufficientFunds(coinsNeeded: 15)

struct Item {
    var price:Int
    var count:Int
}
class VendingMachine{
    var inventory = [
        "Chips":Item(price:30,count:5),
        "Cold drink":Item(price:40,count:3),
        "Candy":Item(price:10,count:4)
    ]
    var coinDeposited = 0
    
    func vend(itemName name:String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }
        guard item.price <= coinDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded:item.price - coinDeposited)
        }
        
        coinDeposited -= item.price
        
        var updateItem = item
        updateItem.count -= 1
        inventory[name] = updateItem
        
        print("Dispensing \(name)")
        
    }
    

}
var vendingMachine = VendingMachine()
vendingMachine.coinDeposited = 8
//try vendingMachine.vend(itemName: "burger")
//try vendingMachine.vend(itemName: "Chip")


struct PurchasedSnack {
    let name: String
    init(name: String, vendingMachine: VendingMachine) throws {
        try vendingMachine.vend(itemName: name)
        self.name = name
    }
}

let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels",
]
func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnacks[person] ?? "Candy"
    try vendingMachine.vend(itemName: snackName)
}

do {
    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
    print("YUMMMMMM .....")
} catch VendingMachineError.invalidSelection {
    print("Invalid Selection.")
} catch VendingMachineError.outOfStock {
    print("Out of Stock.")
} catch VendingMachineError.insufficientFunds(let coinsNeeded) {
    print("Insufficient funds. Please insert an additional \(coinsNeeded) coins.")
} catch {
    print("Unexpected error: \(error).")
}


func nourish(with item: String) throws {
    do {
        try vendingMachine.vend(itemName: item)
    } catch is VendingMachineError {
        print("Couldn't buy that from the vending machine.")
    }
}


do {
    try nourish(with: "Chip")
} catch {
    print("Unexpected non-vending-machine-related error: \(error)")
}
/// “Converting Errors to Optional Values"



















//: [Next](@next)
