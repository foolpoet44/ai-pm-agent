# 📦 Strategic Planning 2025 설치 가이드

## 🎯 시스템 요구사항

### 필수
- **Obsidian**: v1.0 이상 (무료)
  - 다운로드: https://obsidian.md

### 권장 플러그인 (무료)
1. **Dataview** (필수) - 동적 쿼리
2. **Templater** (필수) - 템플릿 자동화
3. **Tasks** (권장) - 체크박스 관리
4. **Calendar** (권장) - 타임라인 시각화
5. **Kanban** (선택) - 칸반 보드

---

## 📥 설치 방법

### Option 1: 전체 Vault 다운로드 (추천)

1. **Strategic-Planning-2025** 폴더 전체를 원하는 위치에 복사
2. Obsidian 실행
3. "Open folder as vault" 선택
4. **Strategic-Planning-2025** 폴더 선택
5. "Trust author and enable plugins" 클릭

### Option 2: 기존 Vault에 추가

1. 기존 Obsidian Vault 열기
2. **Strategic-Planning-2025** 폴더를 Vault 안에 복사
3. 플러그인 수동 설치 (아래 참조)

---

## 🔧 플러그인 설치

### Dataview 설치 (필수)

1. Settings (⚙️) → Community plugins
2. "Turn on community plugins" 클릭
3. Browse → "Dataview" 검색
4. Install → Enable

### Templater 설치 (필수)

1. Browse → "Templater" 검색
2. Install → Enable
3. Settings → Templater
   - Template folder location: `Templates`
   - Trigger Templater on new file creation: ON

### Tasks, Calendar, Kanban 설치 (권장)

위와 동일한 방법으로 각각 설치

---

## ⚙️ 초기 설정

### 1. Dataview 설정

Settings → Dataview
- Enable JavaScript Queries: **ON**
- Enable Inline Queries: **ON**
- Enable Inline JavaScript Queries: **ON**

### 2. Templater 설정

Settings → Templater
- Template folder location: `Templates`
- Automatic jump to cursor: **ON**
- Trigger Templater on new file creation: **ON**

### 3. 파일 및 링크 설정

Settings → Files & Links
- Default location for new notes: `Current folder`
- New link format: `Shortest path when possible`
- Use [[Wikilinks]]: **ON**

---

## ✅ 설치 확인

### 1. Dashboard 테스트

1. `06-Progress-Tracking/Dashboard-2025.md` 파일 열기
2. Dataview 쿼리가 표시되는지 확인
3. "0개 목표" 등으로 빈 데이터가 표시되면 정상

### 2. 템플릿 테스트

1. `Templates` 폴더 열기
2. 모든 템플릿 파일이 있는지 확인:
   - strategic-message.md
   - strategic-theme.md
   - strategic-objective.md
   - key-initiative.md
   - action-plan.md
   - weekly-review.md
   - monthly-report.md
   - dashboard.md

### 3. 폴더 구조 확인

```
Strategic-Planning-2025/
├── 00-Inbox/
├── 01-Strategic-Messages/
├── 02-Strategic-Themes/
├── 03-Strategic-Objectives/
├── 04-Key-Initiatives/
├── 05-Action-Plans/
│   └── Weekly-Actions/
├── 06-Progress-Tracking/
│   ├── Weekly-Review/
│   ├── Monthly-Report/
│   └── Dashboard-2025.md
├── Templates/
├── Scripts/
├── README.md
└── QUICKSTART.md
```

---

## 🎨 테마 및 외관 (선택)

### 추천 테마
- **Minimal**: 깔끔하고 가독성 좋음
- **Things**: 할일 관리에 최적화
- **Blue Topaz**: 한글 폰트 지원

### CSS 스니펫 (선택)

대시보드 스타일 개선을 위한 커스텀 CSS:

```css
/* .obsidian/snippets/dashboard.css */
.dataview.table-view-table {
  width: 100%;
}

.dataview.table-view-table th {
  background-color: var(--background-secondary);
  font-weight: 600;
}

.task-list-item-checkbox {
  margin-right: 0.5em;
}
```

---

## 🔄 업데이트

### 템플릿 업데이트

새 템플릿이 추가되면:
1. `Templates/` 폴더에 새 파일 추가
2. 기존 템플릿은 덮어쓰기

### 스크립트 업데이트

`Scripts/` 폴더의 스크립트는 자유롭게 수정 가능

---

## 🆘 문제 해결

### Dataview 쿼리가 보이지 않음

**증상**: Dashboard에 쿼리 코드만 보임
**해결**:
1. Settings → Community plugins → Dataview 활성화 확인
2. Dataview settings → Enable JS Queries 확인
3. Obsidian 재시작

### 템플릿이 작동하지 않음

**증상**: Templater 명령어가 실행되지 않음
**해결**:
1. Settings → Templater → Template folder 경로 확인
2. `{{date}}` 등의 문법 확인
3. Templater 플러그인 재시작

### 링크가 깨짐

**증상**: `[[링크]]`가 작동하지 않음
**해결**:
1. Settings → Files & Links → Use Wikilinks ON
2. 파일명에 특수문자 제거
3. 링크 경로 확인

### 한글 입력 문제

**증상**: 한글이 깨지거나 입력이 느림
**해결**:
1. Obsidian 최신 버전으로 업데이트
2. 테마 변경 시도
3. IME 설정 확인

---

## 📞 추가 지원

### 공식 문서
- Obsidian: https://help.obsidian.md
- Dataview: https://blacksmithgu.github.io/obsidian-dataview/
- Templater: https://silentvoid13.github.io/Templater/

### 커뮤니티
- Obsidian Forum: https://forum.obsidian.md
- Discord: https://discord.gg/obsidianmd

---

## ✨ 다음 단계

설치가 완료되었다면:

1. **QUICKSTART.md** 읽기
2. **Dashboard-2025.md** 열어보기
3. 첫 전략 메시지 작성 시작

**행운을 빕니다!** 🚀
