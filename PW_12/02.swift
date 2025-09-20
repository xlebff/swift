/* Создать класс ошибок (код, сообщение), возвращаемых сервером. 
На его основе создайте учет ошибок за текущие сутки, 
добавьте время в качестве, ключа. 
Используя сабскрипты, верните ответ сервера в заданном временном интервале. */

class Error {
    let code: Int
    let msg: String

    init(_ code: Int, _ msg: String) {
        self.code = code
        self.msg = msg
    }

    func printInfo() {
        print("Message: \(self.msg)")
    }
}

class ErrorsAccounting {
    var errors: [String: Error] = [:]

    subscript(keyTime: String) -> Error? {
        get {
            return errors[keyTime]
        }
    }

    func add(_ time: String, _ error: Error) {
        errors[time] = error
    }
}

let error0 = Error(404, "Not found")
let error1 = Error(523, "Internal error")

let accounting = ErrorsAccounting()

accounting.add("00:00", error0)

if let error = accounting["00:00"] {
    error.printInfo()
}