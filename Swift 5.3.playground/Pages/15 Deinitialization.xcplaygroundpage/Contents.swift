//: [Previous](@previous)
/// # Deinitialization

class Bank {
    static var coinsInBank = 10_000
    
    static func distribute(coins numberOfCoinRequested:Int) -> Int{
        let numberOfCoinsToVend = min(numberOfCoinRequested, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    
    static func receive(coins:Int){
        coinsInBank+=coins
    }
    
}
class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Bank.distribute(coins: coins)
    }
    func win(coins: Int) {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    deinit {
        Bank.receive(coins: coinsInPurse)
    }
}

var p:Player? = Player(coins:100)
p!.coinsInPurse
Bank.coinsInBank
p!.win(coins:2000)
Bank.coinsInBank

p = nil

Bank.coinsInBank
//: [Next](@next)
