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


var bonusPromotions: Array<String> = [
    "Бесплатное ожидание 5 минут",
    "Накопительные баллы за каждую поездку",
    "Первый заказ со скидкой 50%",
    "Скидка 100 руб. на поездки от 300 руб.",
    "Скидка 15% на семейные поездки"
]


print("\n=== АКЦИИ ДО СОРТИРОВКИ ===")
for (index, item) in bonusPromotions.enumerated() {
    print("\(index + 1). \(item)")
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