// 함수
/*
func 함수명(파라미터: 데이터 타입) -> 반환 타입 {
  return 반환값
};
*/
func sendMessage(message: String) -> String {
  return "Hello! \(message)"
}

sendMessage(message: "Jae Young")

//파라미터 기본값 지정
func message(message: String = "Hello!") -> String {
  return "\(message)";
};

message();
message(message: "Goodbye!");

//아래와 같이 작성 시 함수를 실행할 때 파라미터의 이름을 작성해주지 않아도 됨
func sendHello(_ name: String) -> String {
  return "Hello! \(name)"
}

sendHello("Jae Young")

//파라미터 데이터 타입 뒤에 ...을 작성할 경우 파라미터가 Array로 들어감
func sum(_ numbers: Int...) -> Int {
  var result: Int = 0;
  numbers.forEach { number in
    result = result + number;
  }
  return result;
}

sum(100, 20, 30, 400)
