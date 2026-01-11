---
type: strategic-objective
id: SO-XXX
title: "목표명"
theme: "[[02-Strategic-Themes/테마명]]"
source: "[[01-Strategic-Messages/메시지명]]"
priority: P0 | P1 | P2 | P3
status: 📝 Planning | 🚀 In Progress | ⏸️ On Hold | ✅ Completed | ❌ Cancelled
owner: "책임자명"
team: "담당팀명"
timeline:
  start: {{date:YYYY-MM-DD}}
  end: {{date:YYYY-MM-DD}}
  quarter: 2025-Q1 | 2025-Q2 | 2025-Q3 | 2025-Q4
progress: 0
tags: []
---

# {{id}}: {{title}}

> [!objective] 목표 개요
> **우선순위**: {{priority}}
> **상태**: {{status}}
> **책임자**: {{owner}}
> **기한**: {{timeline.start}} ~ {{timeline.end}}
> **진척률**: {{progress}}%

## 📋 목표 정의

### SMART 기준

**Specific (구체적)**
<!-- 무엇을 달성할 것인가 -->


**Measurable (측정 가능)**
<!-- 어떻게 측정할 것인가 -->


**Achievable (달성 가능)**
<!-- 실현 가능한가 -->


**Relevant (관련성)**
<!-- 전략 테마와의 연결성 -->
- **연결 테마**: {{theme}}
- **근거 메시지**: {{source}}

**Time-bound (기한)**
<!-- 언제까지 -->
- **시작**: {{timeline.start}}
- **종료**: {{timeline.end}}
- **분기**: {{timeline.quarter}}

## 🎯 핵심 성과 지표 (KPI)

### 주요 KPI

| KPI | 측정 방법 | Baseline | Target | Current | 달성률 | 측정 주기 |
|-----|----------|----------|--------|---------|--------|----------|
| KPI #1 | 측정법 | 현재값 | 목표값 | 현재값 | 0% | 월간/분기 |
| KPI #2 | 측정법 | 현재값 | 목표값 | 현재값 | 0% | 월간/분기 |
| KPI #3 | 측정법 | 현재값 | 목표값 | 현재값 | 0% | 월간/분기 |

### KPI 추적 차트
```dataview
TABLE kpi-name as "KPI", baseline, target, current, achievement as "달성률"
FROM "03-Strategic-Objectives"
WHERE file.name = this.file.name
```

## 🚀 Key Initiatives

<!-- 이 목표를 달성하기 위한 핵심 과제들 -->

### 전체 과제 목록
```dataview
TABLE status, owner, timeline.end as "마감일", progress as "진척률"
FROM "04-Key-Initiatives"
WHERE contains(objective, this.file.name)
SORT priority ASC
```

### 과제 요약
1. [[04-Key-Initiatives/KI-XXX]] - 과제명 (우선순위: P0, 진척: 30%)
2. [[04-Key-Initiatives/KI-XXX]] - 과제명 (우선순위: P1, 진척: 10%)
3. [[04-Key-Initiatives/KI-XXX]] - 과제명 (우선순위: P2, 진척: 0%)

## 📊 실행 로드맵

### 분기별 마일스톤

#### 2025-Q1
- [ ] 마일스톤 1
- [ ] 마일스톤 2
- [ ] 마일스톤 3

#### 2025-Q2
- [ ] 마일스톤 1
- [ ] 마일스톤 2

#### 2025-Q3
- [ ] 마일스톤 1
- [ ] 마일스톤 2

#### 2025-Q4
- [ ] 마일스톤 1
- [ ] 최종 목표 달성

### Gantt Chart (간이)
```
Q1 ████████░░░░░░░░░░░░░░░░░░░░
Q2 ░░░░░░░░████████░░░░░░░░░░░░
Q3 ░░░░░░░░░░░░░░░░████████░░░░
Q4 ░░░░░░░░░░░░░░░░░░░░░░░░████
```

## 👥 조직 및 역할

### 책임 구조 (RACI)

| 활동 | Responsible | Accountable | Consulted | Informed |
|------|-------------|-------------|-----------|----------|
| 과제1 | 실무자 | {{owner}} | 관련부서 | 경영진 |
| 과제2 | 실무자 | {{owner}} | 관련부서 | 경영진 |

### 팀 구성
- **책임자**: {{owner}}
- **핵심 멤버**: 
- **협조 부서**: 
- **스폰서**: 

## 💰 리소스 계획

### 예산
- **총 예산**: 
- **분기별 배분**:
  - Q1: 
  - Q2: 
  - Q3: 
  - Q4: 

### 인력
- **Full-time**: 
- **Part-time**: 
- **외부 인력**: 

### 기술/도구
- **필요 기술**: 
- **필요 시스템**: 
- **외부 서비스**: 

## ⚠️ 리스크 관리

### 주요 리스크

| 리스크 | 확률 | 영향도 | 심각도 | 대응 전략 | 담당자 |
|--------|------|--------|--------|-----------|--------|
| 리스크1 | High | High | 🔴 Critical | 전략 | 담당자 |
| 리스크2 | Med | High | 🟡 High | 전략 | 담당자 |
| 리스크3 | Low | Med | 🟢 Medium | 전략 | 담당자 |

### 대응 계획
1. **리스크1**: 
   - 예방 조치: 
   - 완화 방안: 
   - 비상 계획: 

## 🔗 의존성

### 선행 조건
- [ ] 조건1
- [ ] 조건2

### 다른 목표와의 관계
- **의존하는 목표**: [[03-Strategic-Objectives/SO-XXX]]
- **영향받는 목표**: [[03-Strategic-Objectives/SO-XXX]]

### 외부 의존성
- 

## 📈 진척 추적

### 월별 Progress
```dataviewjs
// 월별 진척률 시각화 (예시)
const progress = {
  "2025-01": 0,
  "2025-02": 0,
  "2025-03": 0,
  "2025-04": 0,
  "2025-05": 0,
  "2025-06": 0
};

dv.paragraph(Object.entries(progress).map(([month, pct]) => 
  `${month}: ${"█".repeat(pct/10)}${"░".repeat(10-pct/10)} ${pct}%`
).join("\n"));
```

### 주간 업데이트
```dataview
TABLE status, achievement as "주간 달성", blocker as "블로커"
FROM "06-Progress-Tracking/Weekly-Review"
WHERE contains(objectives, this.file.name)
SORT file.name DESC
LIMIT 4
```

## 📝 활동 로그

### 2025-01
**Week 1**
- 

**Week 2**
- 

### 2025-02
**Week 1**
- 

## 💡 교훈 및 인사이트

### 성공 요인
- 

### 개선 필요 사항
- 

### 다음 목표를 위한 제안
- 

## 🎉 성과 및 임팩트

### 정량적 성과
- 

### 정성적 성과
- 

### 조직에 미친 영향
- 

---

## 📋 체크리스트

### 초기 설정
- [ ] SMART 목표 정의
- [ ] KPI 설정 및 Baseline 측정
- [ ] Key Initiative 도출
- [ ] 책임자 및 팀 배정
- [ ] 예산 확보

### 실행 단계
- [ ] 분기별 마일스톤 설정
- [ ] 리스크 식별 및 대응책 수립
- [ ] 주간 진척 추적 시작
- [ ] 이해관계자 커뮤니케이션

### 완료 단계
- [ ] 최종 KPI 달성 확인
- [ ] 성과 문서화
- [ ] 교훈 정리
- [ ] 다음 목표 제안

---

**작성자**: 
**작성일**: {{date:YYYY-MM-DD}}
**최종 수정**: {{date:YYYY-MM-DD}}
**검토자**: 
**승인일**: 
