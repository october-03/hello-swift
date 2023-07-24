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

// 타입 캐스팅 : 인스턴스의 타입을 확인하거나 어떠한 클래스의 인스턴스를 해당 클래스 계층 구조의 슈퍼 클래스나 서브 클래스로 취급하는 방법
class Media {
  var name: String
  init(_ name: String) {
    self.name = name
  }
}

class Movie: Media {
  var director: String
  init (name: String, director: String) {
    self.director = director
    super.init(name)
  }
}

class Song: Media {
  var artist: String
  init (name: String, artist: String) {
    self.artist = artist
    super.init(name)
  }
}

class Book: Media {
  var author: String
  init (name: String, author: String) {
    self.author = author
    super.init(name)
  }
}

var movieCount = 0
var songCount = 0
var bookCount = 0

let library = [
  Movie(name: "기생충", director: "봉준호"),
  Movie(name: "너의 이름은", director: "신카이 마코토"),
  Song(name: "백야", artist: "M.C the Max"),
  Song(name: "에필로그", artist: "정승환"),
  Book(name: "공허한 십자가", author: "히가시노 게이고")
]

func libraryCount() -> Void {
  print("현재 도서관은 \(bookCount)권의 책과 \(movieCount)편의 영화, 노래 \(songCount)곡을 보유중입니다.")
}

for item in library {
  if item is Movie {
    movieCount += 1
  } else if item is Song {
    songCount += 1
  } else if item is Book {
    bookCount += 1
  }
}

for item in library {
  if let movie = item as? Movie {
    print("제목: \(movie.name) 감독: \(movie.director)")
  }
  if let song = item as? Song {
    print("제목: \(song.name) 가수: \(song.artist)")
  }
  if let book = item as? Book {
    print("제목: \(book.name) 저자: \(book.author)")
  }
}

libraryCount()
