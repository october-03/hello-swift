// 에러 처리
// Swift에서는 try-catch문 사용
enum PhoneError: Error {
  case unknown
  case batteryLow(batteryLevel: Int)
}

// throw를 활용해 에러 발생
//throw PhoneError.batteryLow(batteryLevel: 20)

func checkBattery(level: Int) throws -> String {
  guard level >= 0 else {throw PhoneError.unknown}
  guard level > 20 else {throw PhoneError.batteryLow(batteryLevel: level)}
  return "배터리 잔량: \(level)%"
}

var currentBattery = 20

/*
 do {
  try 오류가 발생 할 가능성이 있는 코드
 } catch 오류 패턴 {
  처리 코드
 }
*/
do {
  let result = try checkBattery(level: currentBattery)
  print(result)
} catch PhoneError.unknown {
  print("알 수 없는 에러입니다.")
} catch PhoneError.batteryLow(let batteryLevel) {
  print("배터리 잔량이 부족합니다")
  print("배터리 잔량: \(batteryLevel)%")
} catch {
  print("알 수 없는 에러입니다. \(error)")
}
