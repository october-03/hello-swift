// 열거형 : 연관성이 있는 값을 모아 놓은 것
enum CompassPoint: String {
  case north = "북"
  case south = "남"
  case east = "동"
  case west = "서"
}

CompassPoint.north

// enum은 특정 값의 데이터 타입으로도 사용 가능
var direction: CompassPoint
direction = .north
print(direction) // north
print(direction.rawValue) // 북

switch direction {
case .east:
  print("동")
case .north:
  print("북")
case .south:
  print("남")
case .west:
  print("서")
}

var rawDirection = CompassPoint(rawValue: "북")
print(rawDirection!)

enum PhoneError {
  case unknown
  case batteryLow(String)
}

let lowBattery = PhoneError.batteryLow("배터리가 곧 방전됩니다.")

switch lowBattery {
case .batteryLow(let message):
  print(message)
  
case .unknown:
  print("알 수 없는 에러입니다.")
}
