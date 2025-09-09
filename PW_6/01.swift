/* Написать функцию, которая увеличивает числовое значение бонуса 
на заданное число для покупателя при его участии в той или иной акции, 
результат присвоить в переменную и вывести на экран, 
предварительно показать исходное значение; список акций 
и начисляемых за них бонусов сформировать отдельно и вывести на экран.
*/

func addBonus(sale: String) -> Bool {
    switch sale {
    case "Sale0":
        bonus += Sale.Sale0.rawValue
        return true
    case "Sale1":
        bonus += Sale.Sale1.rawValue
        return true
    case "Sale2":
        bonus += Sale.Sale2.rawValue
        return true
    case "Sale3":
        bonus += Sale.Sale3.rawValue
        return true
    default:
        print("Акция выбрана неправильно!")
        return false
    }
}

/* Написать функцию перевода бонусов в рубли и показать 
сумму скидки в рублях. (Формула произвольна, на Ваше усмотрение).
*/

var bonus = 100
print("Текущий бонус: \(bonus)")

enum Sale: Int, CaseIterable {
    case Sale0 = 50
    case Sale1 = 100
    case Sale2 = 80
    case Sale3 = 150
}

print("\nДоступные акции: ")
for i in Sale.allCases {
    print(i)
}

print("\nВыберите акцию: ", terminator: "")
var sale = readLine()

while !addBonus(sale: sale ?? "default") {
    sale = readLine()
}

print("\nНовый бонус: \(bonus)")