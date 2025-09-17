/* Создать пять строковых констант
Одни константы это только цифры, другие содержат еще и буквы
Найти сумму всех этих констант приведя их к Int
(Используйте и optionalbinding и forcedunwrapping) */

let string0: String = "42"
let string1: String = "rge"
let string2: String = "634"
let string3: String = "111"
let string4: String = "rge4t3"

var sumOptionalBinding = 0

if let num = Int(string0) {
    sumOptionalBinding += num
}
if let num = Int(string1) {
    sumOptionalBinding += num
}
if let num = Int(string2) {
    sumOptionalBinding += num
}
if let num = Int(string3) {
    sumOptionalBinding += num
}
if let num = Int(string4) {
    sumOptionalBinding += num
}

var sumForcedUnwrapping = 0

sumForcedUnwrapping += Int(string0)!
// sumForcedUnwrapping += Int(string1)!
sumForcedUnwrapping += Int(string2)!
sumForcedUnwrapping += Int(string3)!
// sumForcedUnwrapping += Int(string4)!

print("\(sumOptionalBinding)\n\(sumForcedUnwrapping)")