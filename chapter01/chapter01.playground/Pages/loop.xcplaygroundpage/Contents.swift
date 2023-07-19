//반복문
/*
 for 루프상수 in 순회대상 {
  실행 구문
 }
*/
for i in 1...4 {
  print("\(i) for 1...4") // 1 2 3 4
}

let numbers = [1, 2, 3, 4, 5]

for i in numbers {
  print("\(i) for array") // 1 2 3 4 5
}

/*
 while 조건식 {
  실행 구문
 }
*/
var number = 0

while number < 10 {
  print("\(number) while") // 1 2 3 4 5 6 7 8 9
  number+=1
}

/*
 repeat {
  실행 구문
 } while 조건식
*/
var x = 10

repeat {
  print("\(x) repeat")
  x-=1
} while x > 5
