# 이번 챕터에서는 다음 기술을 스터디했습니다.

- UINavigationController
- ViewController Life Cycle
- 화면간 데이터 전달
- Asset Catalog

## Navigation Controller

### Content View Controller

- 화면을 구성하는 뷰를 직접 구현하고 관련된 이벤트를 처리하는 뷰 컨트롤러

### Container View Controller

- 하나 이상의 Child View Controller를 가지고 있다.
- 하나 이상의 Child View Controller를 관리하고 레이아웃과 화면 전환을 담당한다.
- 화면 구성과 이벤트 관리는 Child View Controller에서 한다.
- Container View Controller는 대표적으로 Navigation Controller와 TabBar Controller가 있다.
- 계층구조로 구성된 content를 순차적으로 보여주는데 유용
  + ex) 애플 기기들의 설정앱

### Navigation Stack

- LIFO 구조

## 화면전환

- View Controller의 View 위에 다른 View를 덮어씌워 전환하기
- View Controller에서 다른 View Controller를 호출하여 전환하기
- Navigation Controller를 사용하여 전환하기
- 화면 전환용 객체 Segueway를 사용하여 화면 전환하기

### View Controller에서 다른 View Controller를 호출하여 전환하기

- 직접 표시한다는 의미에서 프레젠테이션 방식이라고도 함
- 아래 코드와 같이 사용
```
func present(
  _ viewControllerToPresent: UIViewController // 이동할 화면의 View Controller
  animated flag: Bool, // 애니메이션 효과 유무
  completion: (() -> Void)? = nil // 화면 전환이 이루어진 후 실행할 Closure
)
```
- 이전 화면으로 돌아갈때는 아래 코드와 같이 사용
```
func dismiss(
  animated flag: Bool,
  completion: (() -> Void)? = nil
)
```

### Navigation Controller를 사용하여 전환하기

- 아래 코드와 같이 사용
```
func pushViewController(
  _ viewController: UIViewController,
  animated: Bool
)
```
- 이전 화면으로 돌아갈때는 아래 코드와 같이 사용
```
func popVIewController(animated: Bool) -> UIViewController?
```

### 화면 전환용 객체 Segueway를 사용하여 화면 전환하기

#### Action Segueway
- Show
  + 화면전환시 View Controller가 Navigation Stack에 쌓이게 됨
- Show Detail
  + 스플릿뷰에서 사용하는 Segueway
  + iPhone에서 사용시 Show Segueway와 동일하게 작동
  + iPad에서 사용시 Main - Subordinate 구조로 작동
- Present Modally
  + 이전 View Controller를 덮으며 새 화면을 나타냄
- Present As Popover
  + iPad에서 사용
  + 팝업을 띄울때 사용
- Custom
  + Segueway를 사용자가 원하는 방식으로 커스텀 할 때 사용

#### Manual Segueway

## ViewController Life Cycle

- Appearing : 뷰가 화면에 나타나는 중
- Appeared : 뷰가 화면에 나타나는게 완료 된 상태
- Disappearing : 뷰가 화면에서 사라지는 중
- Disappeared : 뷰가 화면에서 사라진 상태

### viewDidLoad()

- 뷰 컨트롤러의 모든 뷰들이 메모리에 로드됐을 때 호출
- 메모리에 처음 로드될 때 한 번만 호출
- 보통 딱 한번 호출될 행위들을 이 메소드 안에 정의
- 뷰와 관련된 추가적인 초기화 작업, 네트워크 호출

### viewWillAppear()

- 뷰가 뷰 계층에 추가되고, 화면에 보이기 직전에 매 번 호출
- 다른 뷰로 이동했다가 돌아오면 재호출
- 뷰와 관련된 추가적인 초기화 작업

### viewDidAppear()

- 뷰 컨트롤러의 뷰가 뷰 계층에 추가된 후 호출
- 뷰를 나타낼 때 필요한 추가 작업
- 애니메이션을 시작하는 작업

### viewWillDisappear()

- 뷰 컨트롤러의 뷰가 뷰 계층에서 사라지기 전에 호출
- 뷰가 생성된 뒤 작업한 내용을 되돌리는 작업
- 최종적으로 데이터를 저장하는 작업

### viewDidDisappear()

- 뷰 컨트롤러의 뷰가 뷰 계층에서 사라진 뒤에 호출
- 뷰가 사라지는 것과 관련된 추가 작업