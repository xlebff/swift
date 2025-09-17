/* Создайте 5 тюплов с тремя параметрами:
1. имя
2. номер машины
3. оценка за контрольную

при создании этих тюплов не должно быть никаких данных

после создания каждому студенту установите имя
некоторым установите номер машины, некоторым - результат контрольной

выведите в консоль: 
- имена студента 
- есть ли у него машина 
- если да, то какой номер
- был ли на контрольной
- если да, то какая оценка */

var student1: (name: String, carNumber: String?, testScore: Int?) = ("", nil, nil)
var student2: (name: String, carNumber: String?, testScore: Int?) = ("", nil, nil)
var student3: (name: String, carNumber: String?, testScore: Int?) = ("", nil, nil)
var student4: (name: String, carNumber: String?, testScore: Int?) = ("", nil, nil)
var student5: (name: String, carNumber: String?, testScore: Int?) = ("", nil, nil)

student1.name = "Иван Иванов"
student2.name = "Мария Петрова"
student3.name = "Алексей Сидоров"
student4.name = "Екатерина Ерёменко"
student5.name = "Дмитрий Михайлов"

student1.carNumber = "А123ВС77"
student3.carNumber = "М456ОР77"
student5.carNumber = "Е789КХ77"

student2.testScore = 5
student4.testScore = 4
student5.testScore = 3

func printInfo(student: (name: String, carNumber: String?, testScore: Int?)) {
    print(student.name)

    if let carNumber = student.carNumber {
        print("Номер машины \(carNumber)")
    } else {
        print("Машины нет")
    }

    if let testScore = student.testScore {
        print("Полученная оценка: \(testScore)")
    } else {
        print("На экзамене не был")
    }

    print()
}

printInfo(student: student1)
printInfo(student: student2)
printInfo(student: student3)
printInfo(student: student4)
printInfo(student: student5)