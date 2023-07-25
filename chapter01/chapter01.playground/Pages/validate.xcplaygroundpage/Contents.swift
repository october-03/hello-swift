// assert: 값의 검증을 위해 사용되며 디버깅중에만 작동
func checkedTen(no: Int) -> Void {
  assert(no > 10, "값이 10을 넘지 못합니다.")
}

checkedTen(no: 12)

/*
 guard 조건 else {
  // 조건이 false 일 시 작동
  return을 통해 코드 작동 방지
 }
 */

func checkedFive(no: Int) -> Void {
  guard no >= 5 else {
    print("값이 5를 넘지 못합니다.")
    return;
  }
  print("값이 5 이상입니다.")
}

checkedFive(no: 4) // guard
checkedFive(no: 5)
checkedFive(no: 8)
