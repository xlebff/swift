/* Создать в соответствии с вариантами 3 кортежа, 
сравнивая между собой численные параметры. 
Вывести кортеж с максимальным значением
*/

var firm1 = (name: "ТехноСервис",
    services: "IT-аутсорсинг",
    turnover: 25000000)

var firm2 = (name: "СтройГарант",
    services: "Строительные услуги",
    turnover: 48500000)

var firm3 = (name: "МаркетПрофи",
    services: "Digital-маркетинг",
    turnover: 12300000)

print(firm1.turnover > firm2.turnover ? 
    (firm1.turnover > firm3.turnover ? firm1.name : firm3.name)
    : (firm2.turnover > firm3.turnover ? firm2.name : firm3.name))