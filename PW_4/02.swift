/* Создать два кортежа (как в задании 1) 
и переменную error ей присвоить значение. 
Вывести полученное сообщение в консоль.
*/

let error1 = (code: 404, message: "Сервер не найден")
let error2 = (code: 500, message: "Внутренняя ошибка сервера") 

var error = 404

if error == error1.code {
    print("Ошибка \(error1.code): \(error1.message)")
} else if error == error2.code {
    print("Ошибка \(error2.code): \(error2.message)")
} else {
    print("Неизвестная ошибка с кодом: \(error)")
}