// 프로퍼티
// 저장 프로퍼티
struct StructUser {
  var name: String
  let age: Int
}

var varStructUser = StructUser(name: "김재영", age: 19)
varStructUser.name = "october03"
varStructUser.age = 20 // 구조체의 age 프로퍼티는 상수이므로 재할당이 불가능함

let letStructUser = StructUser(name: "김재영", age: 19)
letStructUser.name = "october03" // letStructUser 인스턴스는 상수이므로 재할당이 불가능함

class ClassUser {
  var name: String
  let age: Int
  
  init (_ name: String, _ age: Int) {
    self.name = name
    self.age = age
  }
}

var varClassUser = ClassUser("김재영", 19)
varClassUser.age = 20 // 클래스의 age 프로퍼티는 상수이므로 재할당이 불가능함

let letClassUser = ClassUser("김재영", 19)
letClassUser.name = "october03" // 클래스는 참조타입이기에 상수로 사용해도 재할당이 가능

// 계산 프로퍼티
struct Stock {
  var averagePrice: Int
  var quantity: Int
  var purchasePrice: Int {
    get {
      return averagePrice * quantity
    }
    
    set(newPrice) {
      averagePrice = newPrice / quantity
    }
  }
}

var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock)
stock.purchasePrice
stock.purchasePrice = 3500 // purchase 프로퍼티의 set 접근
print(stock.averagePrice, stock.purchasePrice) // 1166, 3498

class Account {
  var credit: Int = 0 {
    willSet {
      print("잔액이 \(credit)에서 \(newValue)으로 변경될 예정입니다.")
    }
    
    didSet {
      print("잔액이 \(oldValue)에서 \(credit)으로 변경되었습니다.")
    }
  }
}

var account = Account()
account.credit = 1000
account.credit = 1500
