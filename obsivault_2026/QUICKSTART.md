# 🚀 빠른 시작 가이드

## Step 1: 신년사 문서 수집 (5분)

### 준비 작업
1. 회장/CEO/임원 신년사 문서를 수집하세요
   - PDF, DOCX, 텍스트 등 모든 형식 가능
2. `00-Inbox/` 폴더에 저장
   - 파일명 예시: `신년사-회장-2025.pdf`

---

## Step 2: Claude로 전략 메시지 추출 (10분)

### Claude에게 요청하기

```
[신년사 문서 내용 붙여넣기]

위 신년사를 분석하여 다음 형식으로 정리해주세요:

1. 핵심 메시지 (3-5개)
2. 전략 테마 분류 (DX/AX/People/Innovation)
3. 명시적 목표 및 KPI
4. 암묵적 목표
5. 타임라인
6. 주요 키워드

Templates/strategic-message.md 템플릿을 사용해서 
01-Strategic-Messages/회장-2025-신년사.md 파일을 만들어주세요.
```

### 결과 저장
- Claude가 생성한 마크다운을 `01-Strategic-Messages/`에 저장

---

## Step 3: 전략 테마 도출 (15분)

### 공통 테마 찾기

여러 메시지를 검토하여 공통 테마를 찾으세요:

**예시**
- DX Transformation (회장, CEO 모두 언급)
- AX Manufacturing (CEO, 생산본부장 언급)
- People & Culture (회장, HR본부장 언급)

### 테마 문서 작성

`Templates/strategic-theme.md` 사용하여 각 테마별 문서 작성
- `02-Strategic-Themes/DX-Transformation.md`
- `02-Strategic-Themes/AX-Manufacturing.md`
- `02-Strategic-Themes/People-Culture.md`

---

## Step 4: 전략 목표 정의 (30분)

### 각 테마별 SMART 목표 설정

`Templates/strategic-objective.md` 사용

**예시: DX Transformation 테마**
```
SO-001: 스마트팩토리 자동화율 80% 달성
- KPI: 자동화율 (Baseline: 50% → Target: 80%)
- 책임자: 생산기술팀장
- 기한: 2025-Q4
```

### 링크 연결
- Strategic Message → Strategic Theme → Strategic Objective

---

## Step 5: 핵심 과제 도출 (45분)

### 목표를 실행 과제로 분해

`Templates/key-initiative.md` 사용

**예시**
```
SO-001 (자동화율 80%)
├─ KI-001: MES 시스템 고도화
├─ KI-002: 로봇 공정 확대
└─ KI-003: AI 품질 검사 도입
```

### 과제당 정의 사항
- 마일스톤 3-5개
- 책임자 및 팀
- 예산 및 리소스
- 리스크

---

## Step 6: 실행계획 수립 (30분)

### 분기별 계획

`Templates/action-plan.md` 사용

**Q1 계획 예시**
```
AP-001-Q1-Plan.md
- Week 1-4: 요구사항 정의
- Week 5-8: 설계 및 개발
- Week 9-12: 테스트 및 검증
```

### 주간 액션으로 분해

`05-Action-Plans/Weekly-Actions/` 폴더에 주간 계획 작성

---

## Step 7: 대시보드로 모니터링 (지속)

### 매일
- 태스크 체크박스 업데이트
- 블로커 기록

### 매주
- Weekly Review 작성 (`Templates/weekly-review.md`)
- 다음 주 계획 수립

### 매월
- Monthly Report 작성 (`Templates/monthly-report.md`)
- KPI 점검
- 경영진 보고

---

## 🎯 첫 2주 실행 체크리스트

### Week 1
- [ ] Day 1: Vault 구조 이해 및 설정
- [ ] Day 2-3: 신년사 문서 수집 및 분석
- [ ] Day 4: Strategic Messages 작성 (3-5개)
- [ ] Day 5: Strategic Themes 정의 (3-4개)

### Week 2
- [ ] Day 1-2: Strategic Objectives 도출 (5-10개)
- [ ] Day 3: Key Initiatives 정의 (10-15개)
- [ ] Day 4: Action Plans 수립 (Q1)
- [ ] Day 5: Dashboard 확인 및 팀 공유

---

## 💡 실전 팁

### Claude 활용
```
# 한 번에 전체 체계 생성 요청
[신년사 문서]

위 문서를 분석하여:
1. Strategic Messages (핵심 메시지 3-5개)
2. Strategic Themes (공통 주제 3-4개)
3. Strategic Objectives (SMART 목표 5-10개)
4. Key Initiatives (실행 과제 10-15개)

모두 생성해주세요. 각각 해당 템플릿 형식으로.
```

### Dataview 쿼리 테스트
- Dashboard를 열어서 쿼리가 작동하는지 확인
- 데이터가 없으면 "0개" 또는 빈 테이블 표시

### 링크 활용
- `[[` 입력하면 자동완성
- Ctrl+클릭으로 이동
- 백링크 패널로 관계 확인

---

## 🔄 반복 워크플로우

### 매주 월요일
1. Weekly Review 템플릿 생성
2. 이번 주 목표 3개 설정
3. Action Plan 작성

### 매주 금요일
1. 완료 태스크 체크
2. 진척률 업데이트
3. Weekly Review 완성
4. 다음 주 계획 수립

### 매월 말
1. Monthly Report 작성
2. KPI 점검
3. 분기 계획 조정
4. 경영진 보고

---

## ❓ 자주 묻는 질문

**Q: 템플릿을 어떻게 사용하나요?**
A: 템플릿 파일을 복사해서 새 이름으로 저장하거나, Templater 플러그인 사용

**Q: Dataview 쿼리가 안 보여요**
A: Obsidian Settings → Community Plugins → Dataview 활성화

**Q: 신년사가 너무 길어요**
A: Claude에게 핵심만 추출 요청. "3문단 이내로 요약"

**Q: 여러 신년사를 한 번에 처리하려면?**
A: 각각 따로 Strategic Message 작성 후, Claude에게 공통 테마 찾기 요청

---

## 📞 다음 단계

이제 실제로 시작하세요!

1. `00-Inbox/`에 첫 신년사 문서 추가
2. Claude에게 분석 요청
3. `Dashboard-2025.md` 열어서 진행 상황 확인

**성공을 기원합니다!** 🎉
