/* Создать и вывести в консоль кортеж содержащий ошибку 
подключения к серверу (текст сообщения) и ее номер (код), 
проверить через if код ошибки и вывести сообщение.
*/

var serverError = (code: 404, message: "Сервер не найден")

print("Код ошибки: \(serverError.code)\n" +
    "Сообщение: \(serverError.message)")

if serverError.code == 404 {
    print("Ошибка 404: Проверьте правильность URL адреса")
} else if serverError.code == 500 {
    print("Ошибка 500: Внутренняя ошибка сервера")
} else if serverError.code == 403 {
    print("Ошибка 403: Доступ запрещен")
} else {
    print("Неизвестная ошибка: Код \(serverError.code)")
}