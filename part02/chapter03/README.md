# 이번 챕터에서는 다음 기술을 스터디했습니다.

- UIStackView
- IBDesignables
- IBInspectable

## UIStackView

- 열 또는 행에 View의 묶음을 배치할 수 있는 인터페이스

### UIStackView Axios

- StackView의 방향을 결정

### UIStackView Distribution

- StackView에 들어가는 View의 사이즈를 어떻게 분배할지 설정

- Fill
  + 각 뷰의 크기를 조절해 StackView를 꽉 채움
- Fill Equally
  + 각 뷰의 크기를 모두 같게 설정
- Fill Proportionally
  + 기존 각 서브뷰들이 가지고 있던 크기에 비례하여 채움
- Equal Spacing
  + 서브뷰들 사이에 간격을 일정하게 설정
- Equal Centering
  + 각 서브뷰들의 중앙과 중앙간의 간격을 일정하게 서정