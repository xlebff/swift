/* Создать, инициализировать и вывести на экран 
структуру в соответствии с вариантом задания */

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

let firm = Firm(name: "ТехноСервис", serviceType: "IT-услуги", annualRevenue: 15_000_000.0)
firm.printInfo()