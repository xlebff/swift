/* Создать 2 словаря с информацией про учеников, состоящей из имени, 
фамилии, отчества, возраста, роста, веса, места обучения и группы, 
и сравнить их возраст, рост и вес. Вывести самого высокого студента. 
Вывести полученный результат в консоль.
*/

let student1: [String: Any] = [
    "name": "Анна",
    "surname": "Иванова",
    "age": 20,
    "height": 168,
    "study": "Technical University",
    "group": "IT-101"
]

let student2: [String: Any] = [
    "name": "Дмитрий",
    "surname": "Петров", 
    "age": 21,
    "height": 182,
    "study": "Technical University",
    "group": "IT-102"
]

var oldest, tallest: String

if let height1 = student1["height"] as? Int, let height2 = student2["height"] as? Int {
    tallest = height1 > height2 ? student1["name"] as! String : 
              height2 > height1 ? student2["name"] as! String : "Одинаковый рост"
    print("Самый высокий: \(tallest)")
}

if let age1 = student1["age"] as? Int, let age2 = student2["age"] as? Int {
    oldest = age1 > age2 ? student1["name"] as! String : 
             age2 > age1 ? student2["name"] as! String : "Одинаковый возраст"
    print("Самый старший: \(oldest)")
}