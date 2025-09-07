/* Создать 3 кортежа, сравнивая собой 
численные коды и значение переменной error, 
вывести сообщение.
*/

let error1 = (code: 404, message: "Сервер не найден")
let error2 = (code: 500, message: "Внутренняя ошибка сервера")
let error3 = (code: 403, message: "Доступ запрещен")

var error = 404

if error == error1.code {
    print("Ошибка \(error1.code): \(error1.message)")
} else if error == error2.code {
    print("Ошибка \(error2.code): \(error2.message)")
} else if error == error3.code {
    print("Ошибка \(error3.code): \(error3.message)")
} else {
    print("Неизвестная ошибка с кодом: \(error)")
}