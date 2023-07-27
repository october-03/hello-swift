import Foundation

let df = DateFormatter()
df.locale = Locale(identifier: "ko_KR")
df.timeZone = TimeZone(abbreviation: "KST")
df.dateFormat = "yyyy-MM-dd"

func dateToString(_ date: Date) -> String {
  return df.string(from: date)
}

func stringToDate(_ date: String) -> Date {
  return df.date(from: date)!
}

var now = dateToString(Date())

// 프로토콜 : 특정 역할을 하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진
protocol UserProtocol {
  var name: String { get set }
  var dob: String { get }
  
  func information()
}

struct UserStructure: UserProtocol {
  var name: String
  var dob: String
  
  func information() {
    print(now, dob)
  }
}

class UserClass: UserProtocol {
  var name: String
  var dob: String
  
  init(_ name: String, _ dob: Date) {
    self.name = name
    self.dob = dateToString(dob)
  }
  
  func information() {
    let age = Calendar.current.dateComponents([.year], from: stringToDate(dob), to: stringToDate(now)).year!
    print("이름: 김재영, 나이 \(age)세")
  }
}

let dob = stringToDate("2022-10-16")

var structUser = UserStructure(name: "김재영", dob: "2003-10-16")
var classUser = UserClass("김재영", dob)

classUser.information()
