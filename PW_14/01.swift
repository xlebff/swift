/* Создайте протокол для класса в соответствие с вариантом задания, 
реализуйте свойства типа (любые комбинации get/set), 
реализуйте в нем инициализатор. Выведите экземпляр класса в консоль. */

protocol FirmProtocol {
    var title: String { get }
    var service: String { get set }
    var revenue: Double { get set }

    init(title: String, service: String, revenue: Double)

    func printInfo() -> Void
}

/* Создайте расширение, выводящее наименование численного значения Вашего класса. */

extension FirmProtocol {
    func printRevenue() -> Void {
        print("Revenue: \(self.revenue)")
    }
}

class Firm: FirmProtocol {
    let title: String
    var service: String
    var revenue: Double

    required init(title: String, service: String, revenue: Double) {
        self.title = title
        self.service = service
        self.revenue = revenue
    }

    func printInfo() -> Void {
        print("Name: \(self.title)\nService: \(self.service)")
        printRevenue()
    }
}

let firm: Firm = Firm(title: "Aurora", service: "N/A", revenue: 10_000_000)
firm.printInfo()