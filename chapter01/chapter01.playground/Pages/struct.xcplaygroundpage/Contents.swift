// 구조체
struct User {
  var name: String;
  var age: Int;
  
  func information() {
    print("이름: \(name) 나이: \(age)")
  }
}

var user = User(name: "김재영", age: 19)

print(user.name) // 김재영
print(user.age) // 19

user.age = 20;

print(user.age) // 20

user.information() // 이름: 김재영 나이: 20
