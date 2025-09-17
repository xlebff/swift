/* Описать структуры на языке Swift, инициализировать поля, 
создать массив значений, ввести значение для поиска 
и вывести прочие поля найденного элемента значения */

struct Firm {
    var name: String
    var serviceType: String
    var annualRevenue: Double

    func printInfo() -> Void {
        print("Название фирмы: \(name)")
        print("Вид услуг: \(serviceType)")
        print("Годовой оборот: \(annualRevenue) руб.")
    }
}

let firms: Array<Firm> = [
    Firm(
        name: "ТехноСервис",
        serviceType: "IT-услуги",
        annualRevenue: 15_000_000
    ),
    Firm(
        name: "СтройГарант",
        serviceType: "Строительные услуги",
        annualRevenue: 25_500_000
    ),
    Firm(
        name: "МаркетПлюс",
        serviceType: "Маркетинговые услуги",
        annualRevenue: 8_200_000
    ),
    Firm(
        name: "ЛогистПро",
        serviceType: "Логистические услуги",
        annualRevenue: 18_700_000
    ),
    Firm(
        name: "КонсалтГрупп",
        serviceType: "Консалтинговые услуги",
        annualRevenue: 12_300_000
    )
]

var minRevenue: Double? = nil

while minRevenue == nil {
    print("Введите минимальный годовой оборот:", terminator: " ")
    if let input = readLine(), let value = Double(input) {
        minRevenue = value
    } else {
        print("Неверный формат числа. Попробуйте еще раз.")
    }
    print()
}

print("Фирмы с годовым оборотом от \(minRevenue!) руб.:")

for firm in firms where firm.annualRevenue >= minRevenue! {
    firm.printInfo()
    print()
}