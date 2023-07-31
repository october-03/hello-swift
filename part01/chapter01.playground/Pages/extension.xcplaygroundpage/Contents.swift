// 익스텐션 : 기존의 클래스, 구조체, 열거형, 프로토콜에 새로운 기능을 추가
extension Int {
  var isEven: Bool {
    return self % 2 == 0
  }
  
  var isOdd: Bool {
    return self % 2 == 1
  }
}

var number: Int = 3;
number.isEven
number.isOdd

extension String {
  func convertInt() -> Int? {
    return Int(self)
  }
}

var string: String = "3"
string.convertInt()

var name: String = "Jae Young"
name.convertInt() // nil
