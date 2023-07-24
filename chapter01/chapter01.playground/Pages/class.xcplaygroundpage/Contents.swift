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

// 상속
/*
class 이름: 부모 클래스 {
// 하위 클래스 정의
}
*/
class Account: User {
  var unit: String = "₩"
  var amount: Int = 0 {
    didSet {
      print("잔액 변동")
      print("\(oldValue) \(unit) → \(amount) \(unit)")
    }
  }
  
  init(_ name: String, _ age: Int, amount: Int) {
    self.amount = amount
    super.init(name, age)
  }
  
  func deposit (_ value: Int) {
    self.amount += value;
  }
  
  func withdraw (_ value: Int) {
    if amount - value < 0 {
      print("잔고가 부족합니다.")
      return
    }
    self.amount -= value
  }
  
  override func information() {
    super.information()
    print("잔액: \(amount) \(unit)")
  }
}

var october03Account = Account("김재영", 19, amount: 0)
october03Account.information()

october03Account.deposit(1200)
october03Account.withdraw(10000)
october03Account.withdraw(1000)

october03Account.information()
