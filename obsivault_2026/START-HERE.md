# 🚀 START HERE - 프로젝트 시작 가이드

## 환영합니다!

**Strategic Planning 2025** Obsidian Vault가 성공적으로 구축되었습니다.

이 시스템은 회장/CEO 신년사를 구조화하여 실행 가능한 업무로 자동 변환하는 AI PM 에이전트 시스템입니다.

---

## ✅ 현재 상태

### 완료된 항목
- ✅ 폴더 구조 생성 (8개 폴더)
- ✅ 템플릿 파일 생성 (6개)
- ✅ 샘플 데이터 생성 (CEO 신년사 → DX 전환 테마 → 스마트팩토리 목표)
- ✅ Obsidian 설정 파일
- ✅ 자동화 스크립트

### 폴더 구조
```
obsivault_2026/
├── 00-Inbox/              # 원본 문서 수집함
├── 01-Strategic-Messages/ # ✅ CEO-2025-신년사.md (샘플)
├── 02-Strategic-Themes/   # ✅ DX-Transformation.md (샘플)
├── 03-Strategic-Objectives/ # ✅ SO-001-스마트팩토리-자동화.md (샘플)
├── 04-Key-Initiatives/    # 핵심 과제 (다음 단계)
├── 05-Action-Plans/       # 실행계획 (다음 단계)
├── 06-Progress-Tracking/  # ✅ Dashboard-2025.md
├── Templates/             # ✅ 6개 템플릿
└── Scripts/              # ✅ setup-vault.sh
```

---

## 🎯 3분 안에 시작하기

### Step 1: Obsidian에서 열기 (30초)

1. **Obsidian 실행**
2. **"Open folder as vault"** 클릭
3. 이 폴더 선택: `G:\내 드라이브\26년\PM_pjt\obsivault_2026`
4. 열기!

### Step 2: 샘플 데이터 확인 (1분)

샘플 데이터가 이미 준비되어 있습니다:

1. **`01-Strategic-Messages/CEO-2025-신년사.md`** 열기
   - CEO 신년사 분석 결과 확인
   - 5가지 핵심 메시지 확인

2. **`02-Strategic-Themes/DX-Transformation.md`** 열기
   - 디지털 전환 테마 확인
   - 4개 전략 목표 확인

3. **`03-Strategic-Objectives/SO-001-스마트팩토리-자동화.md`** 열기
   - SMART 목표 확인
   - KPI, 로드맵, 예산 등 확인

4. **`06-Progress-Tracking/Dashboard-2025.md`** 열기
   - 통합 대시보드 확인

### Step 3: 플러그인 설치 (1분 30초)

**필수 플러그인 5개** (Dataview 쿼리 작동에 필요):

1. Obsidian Settings (⚙️) → Community plugins
2. "Turn on community plugins" 클릭
3. "Browse" 버튼 클릭
4. 다음 플러그인 검색 & 설치:
   - ✅ **Dataview** (필수!)
   - ✅ **Templater** (필수!)
   - ✅ **Calendar** (권장)
   - ✅ **Tasks** (권장)
   - ✅ **Kanban** (권장)

5. 설치 후 각 플러그인 **Enable** 클릭

---

## 📚 다음 단계

### Option A: 샘플 데이터로 학습하기 (추천!)

1. **샘플 문서 둘러보기**
   - 각 폴더의 샘플 문서 확인
   - 링크 클릭해서 문서 간 연결 확인
   - 태그, Dataview 쿼리 확인

2. **템플릿 살펴보기**
   - `Templates/` 폴더의 6개 템플릿 확인
   - 각 템플릿의 구조와 필드 이해

3. **추가 샘플 생성 연습**
   - Claude에게 요청:
   ```
   CEO-2025-신년사.md의 "고객 중심 혁신" 메시지를 기반으로
   SO-002-NPS-70점-달성.md 파일을 만들어주세요.
   Templates/strategic-objective.md 템플릿을 사용해서.
   ```

### Option B: 실제 신년사로 바로 시작하기

1. **신년사 문서 준비**
   - PDF, DOCX, 텍스트 등 원본 파일
   - `00-Inbox/` 폴더에 저장

2. **Claude에게 분석 요청**
   ```
   00-Inbox/[파일명] 을 읽고 분석해주세요.

   Templates/strategic-message.md 템플릿을 사용하여
   핵심 메시지를 추출하고
   01-Strategic-Messages/[제목].md로 저장해주세요.
   ```

3. **전략 체계 구축**
   - Strategic Messages → Themes → Objectives → Initiatives → Actions
   - 각 단계마다 Claude와 협업

### Option C: 시스템 확장하기

1. **추가 템플릿 개발**
   - 프로젝트 계획서
   - 회의록
   - 의사결정 기록

2. **자동화 스크립트**
   - Python으로 PDF 자동 분석
   - Claude API 통합
   - 보고서 자동 생성

3. **외부 시스템 연동**
   - Notion 동기화
   - GitHub 연동
   - Slack 알림

---

## 🎓 학습 리소스

### 문서 읽기 순서
1. **README.md** - 전체 시스템 개요
2. **QUICKSTART.md** - 7단계 빠른 시작
3. **INSTALLATION.md** - 상세 설정 가이드
4. **SUMMARY.md** - 구축 완료 요약

### 템플릿 가이드
- `Templates/strategic-message.md` - 신년사 분석
- `Templates/strategic-theme.md` - 테마 분류
- `Templates/strategic-objective.md` - SMART 목표
- `Templates/key-initiative.md` - 실행 과제
- `Templates/action-plan.md` - 분기 계획
- `Templates/weekly-review.md` - 주간 회고
- `Templates/monthly-report.md` - 월간 보고

---

## 💡 Claude 활용 팁

### 문서 분석 요청
```
[신년사 내용 붙여넣기]

위 내용을 분석하여:
1. 핵심 메시지 3-5개 추출
2. 전략 테마 분류
3. SMART 목표 도출
4. KPI 및 타임라인 파악

Templates/strategic-message.md 형식으로
01-Strategic-Messages/[제목].md 파일을 만들어주세요.
```

### 전체 체계 생성 요청
```
CEO-2025-신년사.md를 기반으로:

1. Strategic Themes 3개 생성 (02-Strategic-Themes/)
2. Strategic Objectives 10개 생성 (03-Strategic-Objectives/)
3. Key Initiatives 15개 생성 (04-Key-Initiatives/)

각각 해당 템플릿을 사용하고 링크로 연결해주세요.
```

### 진척 업데이트 요청
```
SO-001-스마트팩토리-자동화.md를 업데이트해주세요:

1. 이번 주 완료한 마일스톤 추가
2. 진척률 8% → 15% 업데이트
3. 주간 업데이트 섹션 작성
4. 리스크 섹션에 새로운 이슈 추가
```

---

## ⚡ 자주 사용하는 명령어

### Obsidian 단축키
- `Ctrl + N`: 새 노트
- `Ctrl + O`: 빠른 전환
- `Ctrl + P`: 명령 팔레트
- `Ctrl + G`: 그래프 뷰
- `Ctrl + E`: 편집/미리보기 전환

### 마크다운 링크
- `[[문서명]]`: 내부 링크
- `[[문서명|표시 텍스트]]`: 링크 텍스트 변경
- `#태그`: 태그 추가

### Dataview 쿼리 (Dashboard에서 사용)
```dataview
TABLE status, progress, owner
FROM "03-Strategic-Objectives"
WHERE status = "in-progress"
SORT priority DESC
```

---

## 🆘 문제 해결

### Dataview 쿼리가 안 보여요
→ Settings → Community Plugins → Dataview 활성화 확인

### 링크가 작동하지 않아요
→ 파일명과 링크가 정확히 일치하는지 확인 (대소문자, 띄어쓰기)

### 템플릿을 어떻게 사용하나요?
→ 템플릿 파일을 복사해서 새 이름으로 저장하거나 Templater 플러그인 사용

### 샘플 데이터를 지우고 싶어요
→ 각 폴더의 샘플 파일만 삭제하면 됩니다 (템플릿은 유지)

---

## 🎉 성공 기준

### 첫 주 목표
- [ ] Obsidian에서 Vault 열기
- [ ] 필수 플러그인 설치
- [ ] 샘플 데이터 확인
- [ ] 첫 신년사 문서 분석

### 2주차 목표
- [ ] Strategic Messages 3개 이상 작성
- [ ] Strategic Themes 정의
- [ ] Strategic Objectives 5개 이상 작성
- [ ] Dashboard에서 전체 현황 확인

### 1개월 목표
- [ ] 전체 전략 체계 완성
- [ ] Key Initiatives 도출
- [ ] Action Plans 수립
- [ ] 주간 리뷰 시작

---

## 📞 추가 지원

### Claude에게 질문하기
```
이 Obsidian Vault에서 [질문]은 어떻게 하나요?

예:
- "새로운 전략 목표를 추가하려면?"
- "Dashboard를 커스터마이징하려면?"
- "주간 리뷰를 자동화하려면?"
```

### 시스템 확장 요청
```
이 시스템에 [기능]을 추가해주세요.

예:
- "리스크 관리 템플릿 추가"
- "월간 보고서 자동 생성 스크립트"
- "Notion 동기화 기능"
```

---

## 🚀 지금 바로 시작하세요!

1. **Obsidian에서 이 폴더를 Vault로 열기**
2. **CEO-2025-신년사.md 샘플 확인하기**
3. **Dashboard-2025.md에서 전체 현황 보기**
4. **첫 신년사 문서 분석 시작하기**

**성공을 기원합니다!** 🎊

---

**Version**: 1.0
**Created**: 2025-01-11
**Last Updated**: 2025-01-11

**Questions?** Claude에게 언제든지 물어보세요!
