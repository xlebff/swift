/* Создайте на основе примера выше массив с информацией об одном экземпляре из Вашего задания */

var firm: Array<Any> = [Any]()

firm.append("Aurora" as Any)
firm.append("N/A" as Any)
firm.append(10_000_000 as Any)

print(firm)
print()

/* Числовое значение увеличьте на 10 */

firm[2] = (firm[2] as! Int) + 10

/* Название и прочие характеристики напечатайте в консоле */

print("Name: \(firm[0])\nService: \(firm[1])\nRevenue: \(firm[2])\n")

/* Отдельно выведите весь массив */

print(firm)