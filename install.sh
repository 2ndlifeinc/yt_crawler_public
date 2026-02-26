#!/bin/bash
# YouTube Cookie Uploader — 다운로드 & 실행
# Usage: curl -fsSL https://raw.githubusercontent.com/2ndlifeinc/yt_crawler_public/main/install.sh | bash
set -e

REPO="2ndlifeinc/yt_crawler_public"
TMP="/tmp/yt_cookie_uploader"

# OS/아키텍처 감지
detect_binary() {
    local os arch
    os="$(uname -s)"
    arch="$(uname -m)"

    case "$os" in
        Darwin)
            case "$arch" in
                arm64) echo "yt_cookie_uploader-macos-arm64" ;;
                *)     echo "yt_cookie_uploader-macos-x64" ;;
            esac
            ;;
        *)
            echo "지원하지 않는 OS입니다: $os" >&2
            echo "Windows는 https://github.com/$REPO/releases 에서 직접 다운로드하세요." >&2
            exit 1
            ;;
    esac
}

BINARY=$(detect_binary)

# 최신 릴리스 (prerelease 포함) 에서 다운로드 URL 찾기
URL=$(curl -fsSL "https://api.github.com/repos/$REPO/releases" | \
    grep -o "https://github.com/$REPO/releases/download/[^\"]*/$BINARY" | \
    head -1)

if [ -z "$URL" ]; then
    echo "다운로드 URL을 찾을 수 없습니다." >&2
    echo "https://github.com/$REPO/releases 에서 직접 다운로드하세요." >&2
    exit 1
fi

echo "다운로드 중... ($BINARY)"
curl -fsSL "$URL" -o "$TMP"
chmod +x "$TMP"

echo "실행 중..."
echo
"$TMP"
