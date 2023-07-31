// 조건문
/*
 if 조건식 {
  실행할 구문
 }
*/
var age = 12;

if age < 19 {
  print("19세 미만입니다.");
}

/*
 if 조건식 {
  조건에 해당할 경우
 } else {
  조건식에 해당하지 않을 경우
 }
*/
age = 19;

if age < 19 {
  print("19세 미만입니다.");
} else {
  print("19세 이상입니다.")
}

/*
 switch 비교대상 {
  case 패턴1:
    패턴1에 일치할 경우
  case 패턴2:
    패턴2에 일치할 경우
  ...
  default:
    위 비교 패턴에 해당하지 않을 경우
 }
*/
let color = "green"

switch color {
case "green":
  print("초록색")
case "red":
  print("빨간색")
default:
  print("지정되지 않은 색입니다.")
}

// 비교대상이 숫자일 때 일정 범위를 비교할 경우
let temp = -120
var season: String

switch temp {
case ...9:
  season = "겨울"
case 10...14:
  season = "봄"
case 15...25:
  season = "가을"
case 26...:
  season = "여름"
default:
  season = "이상기후"
}

print(season)
