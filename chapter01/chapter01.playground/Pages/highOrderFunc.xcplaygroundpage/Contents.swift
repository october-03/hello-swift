// 고차함수 : 다른 함수를 전달 인자로 받거나 함수 실행의 결과를 함수로 반환하는 함수
// 스위프트에서 제공하는 고차함수 : map, filter, reduce

let intArray = [0, 10, 2, 28, 30, 37, 100, 128, 17]
print("original")
print(intArray)

// map
let map = intArray.map { (number) -> Int in return number * 2 }
print("Map")
print(map)

// filter
let filter = intArray.filter { $0 > 10 }
print("Filter")
print(filter)

// reduce
print("reduce")
let reduce = intArray.reduce(0) {
  (result: Int, element: Int) -> Int in
  print("누적값: \(result), 현재값: \(element)")
  return result + element
}
print("결과값: \(reduce)")
