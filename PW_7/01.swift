/* Создать, инициализировать и вывести на экран 
класс в соответствии с вариантом задания */

/* Фирма (название, вид услуг, годовой оборот) */

class Firm {
    var name: String
    var serviceType: String
    var annualRevenue: Double

    init(_ name: String, _ serviceType: String, _ annualRevenue: Double) {
        self.name = name
        self.serviceType = serviceType
        self.annualRevenue = annualRevenue
    }

    func printInfo() -> Void {
        print("Название фирмы: \(name)")
        print("Вид услуг: \(serviceType)")
        print("Годовой оборот: \(annualRevenue) руб.")
    }
}

let firm = Firm("ТехноСервис", "IT-услуги", 15_000_000.0)
firm.printInfo()