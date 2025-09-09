/* Создать массив, заполнить его и вывести 
в консоль максимальный элемент.
*/

var myArray: [Int] = []

print("Массив: ", terminator: "")

for i in 1...10 {
    myArray.append(Int.random(in: 1...100))
    print("\(myArray[i - 1])\(i != 10 ? ", " : "")", terminator: "")
}

print()
print("Максимальный элемент: \((myArray.max())!)")