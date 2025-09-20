class Bonus {
    let title: String
    let bonusValue: Int
    
    init(title: String, bonusValue: Int) {
        self.title = title
        self.bonusValue = bonusValue
    }
}

class Client {
    let name: String
    var bonusBalance: Int
    
    init(name: String, bonusBalance: Int = 0) {
        self.name = name
        self.bonusBalance = bonusBalance
    }
    
    func printInfo() {
        print("Клиент: \(name)\nБонусный баланс: \(bonusBalance) баллов")
    }
}


func applyBonus(to client: Client, bonus: Bonus) -> () -> Int {
    var currentBonus: Int = client.bonusBalance
    let increment: Int = bonus.bonusValue
    
    func incrementBonus() -> Int {
        currentBonus += increment
        client.bonusBalance = currentBonus
        return currentBonus
    }
    
    return incrementBonus
}


let bonusPromotions: [Bonus] = [
    Bonus(title: "Бесплатное ожидание 5 минут", bonusValue: 5),
    Bonus(title: "Накопительные баллы за каждую поездку", bonusValue: 10),
    Bonus(title: "Первый заказ со скидкой 50%", bonusValue: 50),
    Bonus(title: "Скидка 100 руб. на поездки от 300 руб.", bonusValue: 100),
    Bonus(title: "Скидка 15% на семейные поездки", bonusValue: 15)
]

var clients: [Client] = [
    Client(name: "Иван Иванов", bonusBalance: 100),
    Client(name: "Мария Петрова", bonusBalance: 50),
    Client(name: "Алексей Сидоров", bonusBalance: 200)
]


print("До применения бонуса:")
clients[0].printInfo()

let applyBonusClosure = applyBonus(to: clients[0], bonus: bonusPromotions[0])
let newBalance = applyBonusClosure()

print("\nПосле применения бонуса '\(bonusPromotions[0].title)':")
clients[0].printInfo()
print("Новый баланс через замыкание: \(newBalance) баллов")