// Int : 64bit 정수형
var int: Int = -100;
int;

// UInt : 부호가 없는 64bit 정수형
var uInt: UInt = 100;

// Float : 32bit 부동 소수점
var float: Float = 1.1;

// Double : 64bit 부동 소수점
var double: Double = 1.1;

// Bool : boolean 값
var bool: Bool = true;

// Character : 문자
var character: Character = "가"

// String : 문자열
var string: String = "가나다"

// Any : 모든 타입을 지칭
var any: Any = 1.1;
any = -1.1;
any = 100;
any = -100;
any = false;

// Array : 특정 데이터 타입의 값들을 순서대로 저장하는 리스트 (Any 가능)
var numbers: [Int] = [];
numbers.append(int);
numbers.insert(140, at: 0);
numbers.remove(at: 1);

// Dictionary : 순서없이 키와 값이 한 쌍으로 데이터를 저장하는 컬렉션 타입
var teamForward: [String: [String]] = ["Tottenham": ["Harry Kane"]];
teamForward["Man City"] = ["Erling Haaland"];
teamForward["Arsenal"] = ["Gabriel Jesus"];

teamForward["Tottenham"]?.append("Son");

teamForward.removeValue(forKey: "Arsenal");

teamForward;

// Set : 특정 데이터 타입의 값들을 순서없이 저장하는 리스트 (Any 불가, 중복값 불가)
var set: Set = Set<Int>();
set.insert(100);
set.insert(20);
set.insert(20);

set; // {100, 20}
