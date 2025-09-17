struct Firm {
    var name: String
    var serviceType: String
    var annualRevenue: Double

    func printInfo() -> Void {
        print("Название фирмы: \(name)")
        print("Вид услуг: \(serviceType)")
        print("Годовой оборот: \(annualRevenue) руб.")
    }

    mutating func setRevenue(_ revenue: Double) -> Void {
        self.annualRevenue = revenue;
    }
}

func findFirmWithRevenue(_ revenue: Double) -> Void {
    print("Фирмы с годовым оборотом \(revenue) руб.:")

    for firm in firms where firm.annualRevenue == revenue {
        firm.printInfo()
        print()
    }
}

func enterValue() -> Double {
    var revenue: Double? = nil

    while revenue == nil {
        print("Введите годовой оборот:", terminator: " ")
        if let input = readLine(), let value = Double(input) {
            revenue = value
        } else {
            print("Неверный формат числа. Попробуйте еще раз.")
        }
        print()
    }

    return revenue!
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

findFirmWithRevenue(enterValue())