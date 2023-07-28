// 옵셔널 : 값이 있을 수도 있고 없을 수도 있음.
var name: String? = nil
var number: Int?

name = "Jae Young"

print(name) // Optional("Jae Young")

// 옵셔널 해제 방법
// 명시적 해제 : 강제 해제, 비강제 해제(옵셔널 바인딩)
// 묵시적 해제 : 컴파일러에 의한 자동 해제, 옵셔널의 묵시적 해제

// 강제 해제 (만약 해당 값이 nil일 경우 오류 발생)
print(name!) // Jae Young

// 옵셔널 바인딩
if let result = name {
  print(result) // Jae Young
} else {
  print("해당 값은 nil 입니다.")
}

// 옵셔널 체이닝
struct Developer {
  let name: String
}

struct Company {
  let name: String
  var developer: Developer?
}

var company = Company(name: "OCTOBER")
print(company.developer) // nil

var developer = Developer(name: "Jae Young")
company.developer = developer
print(company.developer?.name) // Optional("Jae Young")
print(company.developer!.name) // Jae Young
