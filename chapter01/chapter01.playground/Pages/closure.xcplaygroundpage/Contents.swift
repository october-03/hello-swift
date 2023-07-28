// 클로저 : 코드에서 전달 및 사용할 수 있는 독립 기능 블록, 일급 객체의 역할을 할 수 있음
// 일급객체 : 전달 인자로 보낼 수 있고, 변수/상수 등으로 저장하거나 전달할 수 있음, 함수의 반환 값이 될 수도 있음

// 클로저 표현식
/*
 { (매개 변수) -> 리턴 타입 in
   실행 구문
 }
*/

let hello = { () -> Void in
  print("hello")
}

hello()

let helloWithName = { (name: String) -> String in
  return "Hello, \(name)"
}

helloWithName("Jae Young")

func funcWithClosure(closure: () -> ()) -> Void {
  closure()
}

funcWithClosure(closure: { () -> Void in print("run funcWithClosure") })
funcWithClosure {
  print("simple run closer func")
}


