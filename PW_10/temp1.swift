/* Изменить свой код так, чтобы при выборе любой из 5-ти акций 
изменялся накопленный бонус клиента в соответствие 
с выбранной акцией, акции и бонусы хранятся и обрабатываются 
с использованием класса и его методов, примените замыкание 
для захвата значения бонуса клиента. */

class Bonus {
    let title: String
    let bonusValue: Int
    
    init(title: String, bonusValue: Int) {
        self.title = title
        self.bonusValue = bonusValue
    }

    func applyBonus(to client: inout Client, completion: (Int, Int) -> Void) {        
        let oldBalance = client.bonusBalance
        client.bonusBalance += bonusValue

        completion(oldBalance, client.bonusBalance)
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


func bonusSort(_ s1: String, _ s2: String) -> Bool {
    guard let firstChar1 = s1.first, let firstChar2 = s2.first else {
        return false
    }

    let first1 = firstChar1.unicodeScalars.first!.value
    let first2 = firstChar2.unicodeScalars.first!.value 
    
    if first1 == first2 {
        if s1.count == 1, s2.count == 1 {
            return false
        } else {
            return bonusSort(String(s1.dropFirst()), String(s2.dropFirst()))
        }
    }
    return first1 < first2
}


var bonusPromotions: Bonus = [
    Bonus(title: "Бесплатное ожидание 5 минут", bonusValue: 5),
    Bonus(title: "Накопительные баллы за каждую поездку", bonusValue: 10),
    Bonus(title: "Первый заказ со скидкой 50%", bonusValue: 50),
    Bonus(title: "Скидка 100 руб. на поездки от 300 руб.", bonusValue: 100),
    Bonus(title: "Скидка 15% на семейные поездки", bonusValue: 15)
]

var clients: Client = [
    Client(name: "Иван Иванов", bonusBalance: 100),
    Client(name: "Мария Петрова", bonusBalance: 50),
    Client(name: "Алексей Сидоров", bonusBalance: 200)
]


func bonusSort(_ s1: String, _ s2: String) -> Bool {
    guard let firstChar1 = s1.first, let firstChar2 = s2.first else {
        return false
    }

    let first1 = firstChar1.unicodeScalars.first!.value
    let first2 = firstChar2.unicodeScalars.first!.value 
    
    if first1 == first2 {
        if s1.count == 1, s2.count == 1 {
            return false
        } else {
            return bonusSort(String(s1.dropFirst()), String(s2.dropFirst()))
        }
    }
    return first1 < first2
}

func applyBonusIncrease(to stocks: [String], incrementCalculator: (String) -> Int) -> [(stock: String, bonus: Int)] {
    var result: [(String, Int)] = []
    
    for stock in stocks {
        let bonusIncrease = incrementCalculator(stock)
        result.append((stock, bonusIncrease))
    }
    
    return result
}

let bonusIncrement: (String) -> Int = { stock in
    switch true {
    case stock.contains("50%"): return 50
    case stock.contains("100 руб"): return 100
    case stock.contains("бесплатное"): return 5
    case stock.contains("накопительные"): return 10
    case stock.contains("15%"): return 15
    default: return 5
    }
}


print("\n=== АКЦИИ ДО СОРТИРОВКИ ===")
for (index, item) in bonusPromotions.enumerated() {
    print("\(index + 1). \(item.title)")
}

bonusPromotions = bonusPromotions.sorted(by: bonusSort)

print("\n=== ОТСОРТИРОВАННЫЕ АКЦИИ ===")
for (index, item) in bonusPromotions.enumerated() {
    print("\(index + 1). \(item)")
}

let stocksWithBonuses = applyBonusIncrease(to: bonusPromotions, incrementCalculator: bonusIncrement)

print("\n=== АКЦИИ С БОНУСАМИ ===")
for (index, item) in stocksWithBonuses.enumerated() {
    print("\(index + 1). \(item.stock) → +\(item.bonus) бонусных баллов")
}