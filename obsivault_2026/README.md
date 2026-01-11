# 📊 Strategic Planning 2025 - Obsidian Vault

## 🎯 목적
회장/CEO/임원 신년사 및 지시사항을 구조화하여 실행 가능한 업무로 자동 변환하는 시스템

## 📁 폴더 구조

```
Strategic-Planning-2025/
│
├── 00-Inbox/              # 원본 문서 수집함
├── 01-Strategic-Messages/ # 구조화된 전략 메시지
├── 02-Strategic-Themes/   # 전략 테마 (DX, AX, People 등)
├── 03-Strategic-Objectives/ # 전략 목표 (SO-XXX)
├── 04-Key-Initiatives/    # 핵심 과제 (KI-XXX)
├── 05-Action-Plans/       # 실행계획 (AP-XXX)
│   └── Weekly-Actions/    # 주간 액션
├── 06-Progress-Tracking/  # 진척 관리
│   ├── Weekly-Review/     # 주간 리뷰
│   └── Monthly-Report/    # 월간 보고
├── Templates/             # 모든 템플릿
└── Scripts/              # 자동화 스크립트
```

## 🚀 빠른 시작

### 1단계: 신년사 문서 수집
- `00-Inbox/` 폴더에 PDF, DOCX, MD 파일 저장
- 파일명 규칙: `신년사-회장-2025.pdf`, `CEO-Letter-2025.md`

### 2단계: 전략 메시지 추출
1. Templates에서 `strategic-message.md` 템플릿 사용
2. Claude에게 문서 분석 요청
3. 추출된 내용을 `01-Strategic-Messages/`에 저장

### 3단계: 전략 체계 구축
- Strategic Theme → Strategic Objective → Key Initiative → Action Plan 순서로 작성
- 각 단계마다 해당 템플릿 사용

### 4단계: 대시보드로 모니터링
- `06-Progress-Tracking/Dashboard-2025.md`에서 전체 현황 확인

## 📋 템플릿 사용법

### 전략 메시지 (Strategic Message)
**위치**: `Templates/strategic-message.md`
**용도**: 회장/CEO/임원 신년사에서 핵심 메시지 구조화

### 전략 테마 (Strategic Theme)
**위치**: `Templates/strategic-theme.md`
**용도**: 공통 주제별로 메시지 그룹핑 (예: DX 전환, 조직문화)

### 전략 목표 (Strategic Objective)
**위치**: `Templates/strategic-objective.md`
**용도**: 측정 가능한 구체적 목표 정의

### 핵심 과제 (Key Initiative)
**위치**: `Templates/key-initiative.md`
**용도**: 목표 달성을 위한 실행 과제

### 실행계획 (Action Plan)
**위치**: `Templates/action-plan.md`
**용도**: 과제를 주간 단위 액션으로 분해

## 🔗 온톨로지 관계

```
Strategic Message (신년사)
    ↓ 추출
Strategic Theme (전략 테마)
    ↓ 도출
Strategic Objective (전략 목표)
    ↓ 분해
Key Initiative (핵심 과제)
    ↓ 실행
Action Plan (실행계획)
    ↓ 추적
Progress Tracking (진척 관리)
```

## 🎨 필수 Obsidian 플러그인

1. **Dataview** - 동적 쿼리 (필수)
2. **Templater** - 템플릿 자동화 (필수)
3. **Calendar** - 타임라인 시각화
4. **Tasks** - 체크박스 추적
5. **Kanban** - 보드 뷰
6. **Graph Analysis** - 관계 시각화

## 💡 사용 팁

### 링크 활용
- `[[문서명]]` 형식으로 관계 연결
- 백링크로 상하 관계 자동 추적

### 태그 활용
- `#DX` `#AX` `#People` `#Innovation` 등 일관된 태그 사용
- 태그로 빠른 필터링

### 검색 활용
- `tag:#DX` - DX 관련 모든 문서
- `"스마트팩토리"` - 전체 텍스트 검색
- `file:SO-` - 전략 목표만 검색

## 📊 워크플로우 예시

### 신년사 입력 → 업무 실행 (2주 프로세스)

**Week 1**: 분석 & 구조화
- Day 1-2: 신년사 문서 수집 및 읽기
- Day 3-4: Strategic Message 추출
- Day 5: Strategic Theme 분류

**Week 2**: 과제화 & 계획
- Day 1-2: Strategic Objective 정의
- Day 3: Key Initiative 도출
- Day 4-5: Action Plan 수립

## 🎯 성공 지표

- [ ] 모든 신년사 메시지가 구조화됨
- [ ] 각 메시지가 최소 1개 이상의 전략 목표로 연결됨
- [ ] 각 목표가 구체적 KPI를 가짐
- [ ] 모든 과제가 담당자 할당됨
- [ ] 주간 액션이 명확히 정의됨

## 🔄 정기 업데이트 주기

- **일간**: Action Plan 체크박스 업데이트
- **주간**: Weekly Review 작성, 다음 주 계획
- **월간**: Monthly Report 작성, KPI 점검
- **분기**: 전략 목표 대비 진척률 리뷰

## 📞 문의 및 개선

이 시스템은 지속적으로 개선됩니다.
피드백과 개선 아이디어는 `00-Inbox/feedback.md`에 기록하세요.

---

**Version**: 1.0
**Last Updated**: 2025-01-08
**Created by**: CSP (Creative Solution Provider)
