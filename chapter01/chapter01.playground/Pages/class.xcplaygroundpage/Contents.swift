// 클래스
class User {
  var name: String = ""
  var age: Int = 0
  
  init(_ name: String, _ age: Int) {
    self.name = name
    self.age = age
  }
  
  // 해당 클래스가 nil이 될 때 접근
  deinit {
    print("deinit User")
  }
  
  func information () {
    print("이름: \(name) 나이: \(age)")
  }
}

var october03 = User("Jae Young", 19)

var deinitTest: User? = User("deinit Test", 20)
deinitTest = nil;

october03.information()
