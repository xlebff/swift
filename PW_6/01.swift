/* Написать функцию, которая увеличивает числовое значение бонуса 
на заданное число для покупателя при его участии в той или иной акции, 
результат присвоить в переменную и вывести на экран, 
предварительно показать исходное значение; список акций 
и начисляемых за них бонусов сформировать отдельно и вывести на экран.
*/

/* Написать функцию перевода бонусов в рубли и показать 
сумму скидки в рублях. (Формула произвольна, на Ваше усмотрение).
*/

/* Написать функцию, показывающую количество получаемых наклеек 
в зависимости от числа имеющихся бонусов и возможные призы в акции, 
а также сколько еще наклеек надо собрать, чтобы получить каждый из них.
*/
import Foundation

func addBonus(saleName: String) -> Bool {
    for sale in sales {
        if sale.name == saleName {
            bonus += sale.bonus
            return true
        }
    }
    print("Акция '\(saleName)' не найдена! Попробуйте снова.")
    return false
}

func buyGift(_ giftName: String) {
    for gift in gifts {
        if gift.name == giftName {
            let availableMarks = convertBonusToMarks(bonus)
            if gift.price <= marks + availableMarks {
                let mod = gift.price - marks
                marks += mod
                bonus -= mod * markCoof
                print("Подарок приобретён! Остаток бонусов: \(bonus)")
                exit(0)
            }
        }
    }
    print("Подарок не найден! Попробуйте снова.")
}

func convertBonusToRubles(_ bonus: Int) -> Double {
    return Double(Float(bonus) * rubCoof)
}

func convertBonusToMarks(_ bonus: Int) -> Int {
    return bonus / markCoof
}

let sales: [(name: String, bonus: Int)] = [
    ("New Year's Special offer", 50),
    ("Summer Sale", 100),
    ("Birthday discount", 80),
    ("Special offer", 150)
]

let gifts: [(name: String, price: Int)] = [
    ("Free Short Ride (up to 3 km)", 50),
    ("50% Discount on Next Ride", 100),
    ("Free Airport Transfer", 300),
    ("Complimentary City Tour", 250),
    ("Free Ride to Restaurant District", 120),
    ("Priority Booking Pass", 80),
    ("Free Wait Time (15 minutes)", 60),
    ("Business Class Upgrade", 200),
    ("Weekend Free Ride Pass", 180),
    ("Loyalty Bonus (10% all rides)", 150)
]

let rubCoof: Float = 0.5, markCoof: Int = 50

var bonus: Int = 10000, rubles: Int = 0, marks: Int = 0

var selectedSale, selectedGift: String


print("Текущий бонус: \(bonus)\nБаланс: \(rubles)")

print("\nДоступные акции:")
for (index, sale) in sales.enumerated() {
    print("\(index + 1). \(sale.name) - +\(sale.bonus) бонусов")
}

repeat {
    print("Выберите акцию из списка: ", terminator: "")
    selectedSale = readLine() ?? ""
} while !addBonus(saleName: selectedSale)

print("\nВаш бонус: \(bonus) (\(convertBonusToRubles(bonus)) рублей / \(convertBonusToMarks(bonus)) наклеек)")

print("Не хотите приобрести подарок?")
for (index, gift) in gifts.enumerated() {
    print("\(index + 1). \(gift.name) - +\(gift.price)")
}

repeat {
    selectedGift = readLine() ?? ""
    buyGift(selectedGift)
} while selectedGift != "No"