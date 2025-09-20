/* Создать класс по варианту, сделать 
сабскрипты для чтения и изменения его полей. */

class Firm {
    var name: String
    var serviceType: String
    var annualRevenue: Double
    
    init(_ name: String, _ serviceType: String, _ annualRevenue: Double) {
        self.name = name
        self.serviceType = serviceType
        self.annualRevenue = annualRevenue
    }
    
    subscript(index: Int) -> Any? {
        get {
            switch index {
                case 0: return name
                case 1: return serviceType
                case 2: return annualRevenue
                default: return nil
            }
        }

        set {
            switch index {
                case 0:
                    if let newValue = newValue as? String {
                        name = newValue
                    }
                case 1:
                    if let newValue = newValue as? String {
                        serviceType = newValue
                    }
                case 2:
                    if let newValue = newValue as? Double {
                        annualRevenue = newValue
                    }
                default:
                    break
            }
        }
    }
}

/* Создать новый класс на основе исходного с учетом 
варианта задания (реестр фирм), использовать пример со стр 2. */

class FirmRegistry {
    var firms: [Firm] = [Firm]()

    subscript(index: Int) -> Firm? {
        get {
            guard index >= 0 && index < firms.count else { return nil }
            return firms[index]
        }
        set {
            guard index >= 0 && index < firms.count, let newFirm = newValue else { return }
            firms[index] = newFirm
        }
    }
}

/*