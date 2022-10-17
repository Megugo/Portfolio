// 26. Создать переменную “age_1” и присвоить ей значение 10
// 27. Создать переменную “age_2” и присвоить ей значение 18
// 28. Создать переменную “age_3” и присвоить ей значение 60
// 29. Создать if в котором будите проверять значение переменной age_1
// 30. Если age_1 < age_2, вывести в консоль “You don’t have access cause your age is ” + age_1 + “ It’s less then ”
// 31. Если age_1 >=  age_2 и age_1 <  age_3, вывести в консоль “Welcome  !”
// 32. Если age_1  > age_3, вывести в консоль “Keep calm and look Culture channel”.
// 33. Иначе выводите “Technical work”.
// 1*:
// Преобразовать написанный код в 26-33 пунктах в функцию, принимающую на вход возраст.
// Пример: const checkAge = function(age) {
// Ваши преобразования
// }
// Вывести в консоль результат работы функции с возрастами 17, 18, 61
var prompt = require('prompt-sync')()
var age_1 = 10
var age_2 = 18
var age_3 = 60
function age_check1(age1,age2,age3){
    if (age1 == 10){console.log("age = 10")}
    if (age1<age2){console.log("You don’t have access cause your age is " + age1 + " It’s less then ”")}
    if ((age1>=age2) && (age1 < age3)) {console.log("Welcome !")}
    if (age1> age3){console.log("Keep calm and look Culture channel")}
    else{console.log("Technical work")}
}
//age_check1(age_1,age_2,age_3);
// 2*:
// Преобразовать задание 1* таким образом, чтобы первым делом в функции проверялся тип данных. И если он не Number - кидалась ошибка.
function age_check2(age1,age2,age3){
    if (typeof age1 != "number" || typeof age2 != "number" || typeof age3 != "number"){console.log("Error: wrang type")}
    else{age_check1(age1,age2,age3)}
}
//age_check2(age_1,age_2,age_3);
// 3**:
// Преобразовать 2* таким образом, чтобы значение '2' (строка в которой лежит ТОЛЬКО ЦИФРА) пропускалось, преобразовываясь в number
function age_check3(age1,age2,age3){
    if (typeof age1 != "number"){age1=+age1}
    if (typeof age2 != "number"){age2=+age2}
    if (typeof age3 != "number"){age3=+age3}
    age_check2(age1,age2,age3);
}
//age_check3(age_1,age_2,age_3+"")
// 4***:
// Преобразовать задание 3* таким образом, чтобы возраст вводится используя функцию prompt в привязанной верстке

age_1 = prompt("Age 1: ");
age_2 = prompt("Age 2: ");
age_3 = prompt("Age 3: ");
age_check3(age_1,age_2,age_3+"")