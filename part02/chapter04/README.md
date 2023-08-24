# 이번 챕터에서는 다음 기술을 스터디했습니다.

- URLSession를 활용한 HTTP 통신
- API 사용
- Alamofire를 활용한 HTTP 통신

## 제가 이번 챕터에서 테스트로 사용한 API 정보입니다.
### URL
http://192.168.0.92:9998 (API를 띄운 맥의 IP)
### Response
```json
{
    "message": "Hello World!",
    "developer": {
        "name": "Jae Young Kim",
        "nickname": "october03",
        "email": "season_autumn@kakao.com",
        "age": 19
    }
}
```

## 웹 통신과 Protocol

- 인터넷 상에서의 통신을 의미
- 많은 정보들이 주고 받기에 인터넷에는 Protocol이라는 규약이 존재

## URLSession
특정한 URL을 이용하여 데이터를 다운로드하고 업로드하기 위한 API

- 공유세션
  + 기본요청을 하기 위한 세션으로 쉽게 만들어 사용이 가능
- 기본세션
  + 공유세션과 유사하며 직접 원하는 설정이 가능함
  + 캐시와 쿠키 등을 디스크에 저장함
- 임시세션
  + 공유세션과 비슷하지만 캐시와 쿠키 등을 저장하지 않음
- 백그라운드 세션
  + 앱이 실행되지 않는 동안 컨텐츠 업로드 및 다운로드 가능

### URLSessionTask

- URLSessionDataTask
  + 데이터 객체를 사용하여 데이터를 요청하고 응답
  + 짧은 요청에 사용
- URLSessionUploadTask
  + 데이터 객체 또는 파일 형태의 데이터를 업로드하는데 사용
  + 백그라운드 업로드 지원
- URLSessionDownloadTask
  + 데이터를 다운로드 받아서 파일 형태로 저장하는데 사용
  + 벡그라운드 다운로드 지원
- URLSessionStreamTask
  + TCP IP 연결을 생성할 때 사용
- URLSessionWebSocketTask
  + 웹소켓 Protocol을 통해 통신

### URLSession Life Cycle

1. Session Configuration을 결정하고, Session을 생성
2. 통신할 URL과 Request 객체를 설정
3. 사용할 Task를 결정하고 그에 맞는 Completion Handler나 Delegate 메소드들을 작성
4. 해당 Task를 실행
5. Task 완료 후 Completion Handler 클로저가 호출이 됨

## Alamofire
Swift 기반의 HTTP 네트워킹 라이브러리

### URLSession 대신 Alamofire를 사용하는 이유
코드의 간소화, 가독성 측면에서 도움을 주고 여러 기능을 직접 구축하지 않아도 쉽게 사용할 수 있음