class Firm {
    var name: String
    var serviceType: String
    var annualRevenue: Double
    
    init(_ name: String, _ serviceType: String, _ annualRevenue: Double) {
        self.name = name
        self.serviceType = serviceType
        self.annualRevenue = annualRevenue
        
        print("Фирма '\(name)' создана")
    }
    
    convenience init(_ name: String) {
        self.init(name, "Вид услуг не указан", 0)
    }

    deinit {
        print("Фирма '\(name)' ликвидирована")
    }

    func printInfo() {
        print("Информация о фирме\nФирма: \(name)\nУслуги: \(serviceType)\nОборот: \(annualRevenue) руб.")
    }
}

class FirmRegistry: Firm {
    var registrationNumber: String
    var registrationDate: String
    var isActive: Bool

    private static var allFirms: [FirmRegistry] = []

    init(_ name: String, 
        _ serviceType: String, 
        _ annualRevenue: Double,
        _ registrationNumber: String,
        _ registrationDate: String,
        _ isActive: Bool) {

        self.registrationNumber = registrationNumber
        self.registrationDate = registrationDate
        self.isActive = isActive
        super.init(name, serviceType, annualRevenue)

        FirmRegistry.allFirms.append(self)        
        print("Фирма '\(name)' добавлена в реестр")
    }

    convenience init(from firm: Firm) {
        let registrationNumber = String(Int.random(in: 0...100))
        let registrationDate = "..."
        
        self.init(
            firm.name,
            firm.serviceType,
            firm.annualRevenue,
            registrationNumber,
            registrationDate,
            true
        )
    }

    deinit {
        if let index = FirmRegistry.allFirms.firstIndex(where: { $0.registrationNumber == self.registrationNumber }) {
            FirmRegistry.allFirms.remove(at: index)
        }
    }

    override func printInfo() {
        print("Информация о фирме в реестре:"
            + "\nРегистрационный номер: \(registrationNumber)"
            + "\nНазвание: \(name)"
            + "\nВид услуг: \(serviceType)"
            + "\nГодовой оборот: \(annualRevenue) руб.")
    }
}

let simpleFirm: Firm = Firm("Samantha")
simpleFirm.printInfo()

print()

let regFirm: FirmRegistry = FirmRegistry(from: simpleFirm)
regFirm.printInfo()