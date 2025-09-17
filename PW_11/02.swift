/* С сервера к нам приходит кортеж с тремя параметрами:
1. statusCode
2. message
3. errorMessage

в этом кортеже statusCode всегда содержит данные, но сама строка приходит только в одном поле

если statusCode от 200 до 300 исключительно, то выводите message,

в противном случает выводите errorMessage

После этого проделайте тоже самое только без участия statusCode */

func withoutCode(response: (statusCode: Int, message: String?, errorMessage: String?)) {
    if let message = response.message, response.errorMessage == nil {
        print(message)
    } else {
        print(response.errorMessage!)
    }
}

func withCode(response: (statusCode: Int, message: String?, errorMessage: String?)) {
    if (200..<300).contains(response.statusCode) {
        print(response.message!)
    } else {
        print(response.errorMessage!)
    }
}

let response1: (statusCode: Int, message: String?, errorMessage: String?) = (200, "Данные получены", nil as String?)
let response2: (statusCode: Int, message: String?, errorMessage: String?) = (404, nil as String?, "Страница не найдена")

print("with code")
withCode(response: response1)
withCode(response: response2)

print("\nwithout code")
withoutCode(response: response1)
withoutCode(response: response2)