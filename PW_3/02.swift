/* 2. Создать два кортежа в виде 2 учеников (как в задании 1) 
и сравнить их возраст, рост и вес. 
Вывести полученный результат в консоль. */

var meInTuple = (name: "Лилия",
    surname: "Козлова",
    age: 17,
    height: 168,
    group: "ИС-31")

var someoneInTuple = (name: "Майя",
    surname: "Нечаева",
    age: 15,
    height: 154,
    group: "СА-16")

print("Студент " + someoneInTuple.name
    + (someoneInTuple.age > meInTuple.age ? " старше " : " младше ")
    + "и" + (someoneInTuple.height > meInTuple.height ? " выше " : " ниже ")
    + "студента " + meInTuple.name)