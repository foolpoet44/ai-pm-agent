# AI PM Agent - Product Management Automation System

**Version:** 1.0
**Created:** 2026-01-03
**Purpose:** Claude Code를 활용한 PM 업무 자동화 (아이디어 → PRD → 유저스토리)

---

## 🔗 Related Projects

이 프로젝트는 **AI PM Agent** 시스템에 집중합니다.

**Strategic Planning 2025** (신년사 → 전략 → 실행계획 시스템)는 별도 디렉토리로 분리되었습니다:
- 📂 위치: `../strategic-planning-2025/`
- 🎯 목적: 회장/CEO/임원 신년사를 구조화하여 실행 가능한 업무로 자동 변환
- 📊 형식: Obsidian Vault 기반 전략 관리 시스템

---

## 📋 프로젝트 개요

AI PM Agent는 Product Manager의 핵심 업무를 자동화하는 Claude Code 기반 시스템입니다. 아이디어 검증부터 PRD 작성, 유저스토리 생성까지 전체 제품 기획 프로세스를 지원합니다.

### 핵심 기능
- ✅ **아이디어 검증**: Lean Canvas, Problem-Solution Fit, 시장 분석
- ✅ **PRD 자동 생성**: 15개 섹션 완전한 Product Requirements Document
- ✅ **유저스토리 작성**: Epic/Story/Task 계층 구조, Acceptance Criteria
- ✅ **문서 출력**: Google Docs, Google Slides 포맷 (Markdown 기반)

---

## 🏗️ 시스템 아키텍처

```
┌─────────────────────────────────────────────────────┐
│                   User Input                         │
│               (비즈니스 아이디어)                      │
└─────────────────┬───────────────────────────────────┘
                  │
                  ▼
┌─────────────────────────────────────────────────────┐
│             Sub-Agents (독립 AI 전문가)               │
├─────────────────────────────────────────────────────┤
│                                                       │
│  ┌──────────────┐  ┌───────────┐  ┌──────────────┐ │
│  │ idea-agent   │→│ prd-agent │→│userstory-agent│ │
│  │              │  │           │  │              │ │
│  │ • 아이디어 검증│  │ • PRD 작성│  │ • Epic/Story │ │
│  │ • 시장 분석  │  │ • 기술 사양│  │ • AC 작성    │ │
│  │ • 경쟁 분석  │  │ • OKR 정의│  │ • 추정/우선순위│ │
│  └──────┬───────┘  └─────┬─────┘  └──────┬───────┘ │
│         │                │                │         │
└─────────┼────────────────┼────────────────┼─────────┘
          │                │                │
          ▼                ▼                ▼
┌─────────────────────────────────────────────────────┐
│                Skills (재사용 가능한 지식)             │
├─────────────────────────────────────────────────────┤
│                                                       │
│  ┌──────────────────────────────────────────────┐  │
│  │ pm-knowledge-base                            │  │
│  │ • RICE, MoSCoW, OKR, AARRR                   │  │
│  └──────────────────────────────────────────────┘  │
│                                                       │
│  ┌──────────────┐  ┌──────────────┐  ┌───────────┐ │
│  │idea-generation│  │prd-           │  │userstory-  │ │
│  │              │  │documentation │  │documentation│ │
│  └──────────────┘  └──────────────┘  └───────────┘ │
│                                                       │
│  ┌───────────────┐  ┌────────────────────────────┐ │
│  │google-docs-   │  │presentation-generator      │ │
│  │writer         │  │                            │ │
│  └───────────────┘  └────────────────────────────┘ │
│                                                       │
└───────────────────────┬───────────────────────────────┘
                        │
                        ▼
┌─────────────────────────────────────────────────────┐
│           Reference Templates (9개 파일)             │
├─────────────────────────────────────────────────────┤
│                                                       │
│  /reference/idea-templates/                          │
│    • lean-canvas-template.md                        │
│    • problem-solution-fit.md                        │
│    • market-analysis-guide.md                       │
│                                                       │
│  /reference/prd-templates/                           │
│    • standard-prd-template.md                       │
│    • feature-spec-template.md                       │
│                                                       │
│  /reference/userstory-templates/                     │
│    • epic-story-task-structure.md                   │
│    • acceptance-criteria-guide.md                   │
│    • estimation-techniques.md                       │
│                                                       │
└─────────────────────────────────────────────────────┘
                        │
                        ▼
┌─────────────────────────────────────────────────────┐
│                Output Documents                      │
├─────────────────────────────────────────────────────┤
│  • Idea Validation Report (Markdown/Google Docs)    │
│  • Product Requirements Document (Markdown/GDocs)   │
│  • User Stories Document (Markdown/Google Docs)     │
│  • Product Pitch Deck (Markdown/Google Slides)      │
└─────────────────────────────────────────────────────┘
```

---

## 📁 프로젝트 구조

```
PM_pjt/
├── .claude/                        # Claude Code 설정
│   ├── agents/                     # Sub-Agents (3개)
│   │   ├── idea-agent/
│   │   │   └── AGENT.md
│   │   ├── prd-agent/
│   │   │   └── AGENT.md
│   │   └── userstory-agent/
│   │       └── AGENT.md
│   └── skills/                     # Skills (6개)
│       ├── pm-knowledge-base/
│       │   └── SKILL.md
│       ├── idea-generation/
│       │   └── SKILL.md
│       ├── prd-documentation/
│       │   └── SKILL.md
│       ├── userstory-documentation/
│       │   └── SKILL.md
│       ├── google-docs-writer/
│       │   └── SKILL.md
│       └── presentation-generator/
│           └── SKILL.md
│
├── reference/                      # Reference 템플릿 (9개)
│   ├── idea-templates/
│   │   ├── lean-canvas-template.md
│   │   ├── problem-solution-fit.md
│   │   └── market-analysis-guide.md
│   ├── prd-templates/
│   │   ├── standard-prd-template.md
│   │   └── feature-spec-template.md
│   └── userstory-templates/
│       ├── epic-story-task-structure.md
│       ├── acceptance-criteria-guide.md
│       └── estimation-techniques.md
│
├── logs/                           # 개발 로그
│   └── project-development.md
│
├── config/                         # 설정 파일
│
└── README.md                       # 이 파일
```

---

## 🚀 사용 방법

### 1. 아이디어 검증 (idea-agent)

```bash
# Claude Code에서 idea-agent 호출
> Use the idea-agent to validate my product idea:
> "AI 기반 개인화 학습 플랫폼 for 직장인"
```

**Output:**
- Idea Validation Report (Markdown)
- Lean Canvas
- 시장 분석 (TAM/SAM/SOM)
- 경쟁 분석
- Go/No-Go 추천

### 2. PRD 작성 (prd-agent)

```bash
# Validated idea를 PRD로 변환
> Use the prd-agent to create a PRD from the validated idea
```

**Output:**
- 15개 섹션 완전한 PRD
- User Stories
- Acceptance Criteria
- 기술 사양
- Success Metrics
- Timeline

### 3. 유저스토리 생성 (userstory-agent)

```bash
# PRD를 Epic/Story/Task로 분해
> Use the userstory-agent to break down the PRD into user stories
```

**Output:**
- Epic 정의
- User Stories (INVEST 기준)
- Acceptance Criteria (Given-When-Then)
- Task 분해
- Story Point 추정
- 우선순위 (MoSCoW, RICE)

### 4. 문서 출력

```bash
# Google Docs 포맷으로 변환 (Markdown 제공)
> Format the PRD for Google Docs

# Presentation 생성
> Create a product pitch deck from the idea validation report
```

---

## 🎯 Sub-Agents 상세

### 1. idea-agent
**역할:** 비즈니스 아이디어 검증 전문가

**주요 기능:**
- Lean Canvas 작성
- Problem-Solution Fit 검증
- 시장 분석 (TAM/SAM/SOM)
- 경쟁 분석 (직접/간접)
- PESTLE 분석
- Customer Persona 생성
- Validation Report 출력

**사용 Skills:**
- idea-generation
- pm-knowledge-base

**Reference 템플릿:**
- lean-canvas-template.md
- problem-solution-fit.md
- market-analysis-guide.md

---

### 2. prd-agent
**역할:** Product Requirements Document 작성 전문가

**주요 기능:**
- 15개 섹션 표준 PRD 작성
- OKR, SMART 목표 설정
- User Stories & Use Cases
- Acceptance Criteria (Given-When-Then)
- 기능 요구사항 (Functional)
- 비기능 요구사항 (Performance, Security, Accessibility)
- 기술 사양 (Architecture, API, Data Model)
- Analytics & Metrics
- Risk Assessment
- Timeline & Milestones

**사용 Skills:**
- prd-documentation
- pm-knowledge-base

**Reference 템플릿:**
- standard-prd-template.md
- feature-spec-template.md

---

### 3. userstory-agent
**역할:** User Story, Epic, Task 작성 전문가

**주요 기능:**
- Epic/Story/Task 계층 구조화
- INVEST 기준 준수
- Given-When-Then Acceptance Criteria
- Story Point 추정 (Fibonacci: 1-13)
- Prioritization (MoSCoW, RICE)
- Task Breakdown (2-8시간 단위)
- Definition of Done

**사용 Skills:**
- userstory-documentation
- pm-knowledge-base

**Reference 템플릿:**
- epic-story-task-structure.md
- acceptance-criteria-guide.md
- estimation-techniques.md

---

## 🧠 Skills 상세

### 1. pm-knowledge-base
**목적:** PM 프레임워크 및 방법론 라이브러리

**제공 지식:**
- **우선순위 지정**: RICE, MoSCoW, Kano Model, Value vs Effort
- **목표 설정**: OKR, SMART, North Star Metric
- **고객 리서치**: Jobs-to-be-Done, Persona, Customer Interview
- **제품 전략**: Blue Ocean, Positioning, Go-to-Market
- **메트릭스**: AARRR (Pirate Metrics), 핵심 지표, A/B Testing
- **로드맵**: Now-Next-Later, Theme-based, Feature-based

---

### 2. idea-generation
**목적:** 아이디어 생성 및 비즈니스 검증

**프로세스:**
1. 아이디어 추출 (Problem, Target User, Value Prop)
2. Lean Canvas 작성
3. Problem-Solution Fit 검증
4. 시장 분석 (TAM/SAM/SOM)
5. 경쟁 분석
6. Persona 생성
7. Validation Report 출력

---

### 3. prd-documentation
**목적:** PRD 및 Feature Spec 작성

**구조:**
- 15개 섹션 표준 PRD
- User Story with Acceptance Criteria
- 기술 요구사항 (API, Data Model, Integration)
- 비기능 요구사항 (Performance, Security, Accessibility)
- Analytics & Metrics
- Risk & Mitigation

---

### 4. userstory-documentation
**목적:** Epic, User Story, Task 작성

**프로세스:**
1. PRD 분석
2. Epic 정의 (대분류)
3. User Story 작성 (INVEST)
4. Acceptance Criteria (Given-When-Then)
5. Task Breakdown (2-8시간)
6. Story Point 추정
7. Prioritization (MoSCoW, RICE)

---

### 5. google-docs-writer
**목적:** Markdown → Google Docs 변환

**기능:**
- 문서 타입별 포맷팅 (PRD, User Stories, Idea Report)
- 스타일 가이드 (폰트, 색상, 레이아웃)
- 접근성 (WCAG AA)
- Table, List, Code Block 포맷팅
- **Note:** Google Drive MCP 미설정 시 Markdown 출력 + 변환 가이드 제공

---

### 6. presentation-generator
**목적:** Google Slides 프레젠테이션 생성

**템플릿:**
- **Product Pitch Deck** (12 slides, 15-20분)
- **PRD Review** (15 slides, 30분)
- **Sprint Review** (8 slides, 15분)
- **Roadmap** (10 slides, 20분)

**디자인:**
- 색상 팔레트, 타이포그래피 가이드
- 6x6 Rule (max 6 bullets, 6 words each)
- 청중별 맞춤 (Executives, Team, Customers, Investors)

---

## 📚 Reference 템플릿

### Idea Templates (3개)
1. **lean-canvas-template.md**
   - 9 Boxes: Problem, Solution, UVP, Channels, Revenue, Costs, Metrics, Unfair Advantage, Customer Segments

2. **problem-solution-fit.md**
   - Problem Identification
   - Solution Design
   - Validation Plan (Interviews, MVP, Beta Testing)

3. **market-analysis-guide.md**
   - TAM/SAM/SOM 계산
   - 경쟁 분석 프레임워크
   - PESTLE 분석
   - Buyer Persona 템플릿
   - Jobs-to-be-Done

### PRD Templates (2개)
4. **standard-prd-template.md**
   - 15개 섹션 완전한 PRD 구조
   - OKR, Success Metrics
   - User Stories, Use Cases
   - Technical Specifications

5. **feature-spec-template.md**
   - 개별 Feature 명세
   - Acceptance Criteria (Given-When-Then)
   - Edge Cases, Error Handling
   - Testing Requirements

### User Story Templates (3개)
6. **epic-story-task-structure.md**
   - Epic/Story/Task 계층 구조
   - INVEST 기준
   - Definition of Done

7. **acceptance-criteria-guide.md**
   - Given-When-Then 포맷
   - Coverage Checklist
   - 예시 (다양한 Feature 타입)

8. **estimation-techniques.md**
   - Story Points (Fibonacci)
   - Planning Poker
   - T-Shirt Sizing
   - RICE Scoring

---

## 🔄 통합 플로우 예시

### 전체 프로세스: 아이디어 → 출시

```
Step 1: 아이디어 입력
├─ User: "AI 기반 개인화 학습 플랫폼"
└─ Target: 자기계발 관심 있는 2030 직장인

Step 2: idea-agent 실행
├─ Lean Canvas 작성
├─ 시장 분석 (TAM: $5B, SAM: $500M, SOM: $25M)
├─ 경쟁 분석 (3개 주요 경쟁사)
├─ Persona 생성
└─ Output: idea-validation-report.md

Step 3: prd-agent 실행
├─ PRD 15개 섹션 작성
├─ OKR 정의
│   ├─ Objective: 직장인 학습 플랫폼 1위
│   └─ KR: MAU 200K, D30 Retention 30%, NPS 50+
├─ User Stories (20개)
├─ Technical Specs (API, Data Model)
└─ Output: ai-learning-platform-prd-v1.0.md

Step 4: userstory-agent 실행
├─ Epic 1: User Onboarding (5 stories)
├─ Epic 2: Learning Path Generation (8 stories)
├─ Epic 3: Progress Tracking (7 stories)
├─ Story Points 총합: 120 points
├─ 우선순위 (P0: 15, P1: 25, P2: 10)
└─ Output: ai-learning-platform-user-stories-v1.0.md

Step 5: 문서 출력
├─ Google Docs 변환 (Markdown 제공)
├─ Product Pitch Deck 생성 (12 slides)
└─ Output: presentation-product-pitch.md

Step 6: 개발 시작
├─ Sprint Planning (Velocity: 25 points/sprint)
├─ Sprint 1: Epic 1 (User Onboarding)
└─ ...
```

---

## ⚙️ 설정 및 요구사항

### 필수 요구사항
- **Claude Code**: 최신 버전
- **Node.js**: v18+ (선택사항, MCP 연동 시)
- **Git**: 버전 관리

### 선택사항
- **Google Drive MCP**: Google Docs/Slides 자동 생성
  - 현재 미설정 → Markdown 출력 + 변환 가이드 제공
  - 설정 시 자동 변환 가능

### 환경 변수
현재 필요 없음 (모든 로컬 파일 기반)

---

## 🎓 학습 자료

### PM 프레임워크
- **Lean Canvas**: 9 Boxes 비즈니스 모델
- **Jobs-to-be-Done**: "When I..., I want..., So I can..."
- **OKR**: Objective + Key Results
- **RICE**: Reach × Impact × Confidence / Effort
- **MoSCoW**: Must, Should, Could, Won't
- **AARRR**: Acquisition, Activation, Retention, Revenue, Referral

### User Story 작성
- **INVEST**: Independent, Negotiable, Valuable, Estimable, Small, Testable
- **Given-When-Then**: Acceptance Criteria 표준 포맷
- **Story Points**: Fibonacci (1, 2, 3, 5, 8, 13)
- **Planning Poker**: 팀 추정 기법

### 참고 자료
- AI Engineer 설명: https://lnkd.in/g7tVyMpu
- Grace Leung 가이드: https://lnkd.in/gsVUd5ct
- How I AI 시리즈: https://lnkd.in/gARsSAjJ
- 티타임즈 한글 설명: https://lnkd.in/gCDdyQZH

---

## 📝 로그 및 문서

### 개발 로그
- `/logs/project-development.md`: 전체 개발 과정 기록

### 생성 문서 예시
- `/docs/idea-validation-reports/`: 아이디어 검증 보고서
- `/docs/prds/`: PRD 문서
- `/docs/user-stories/`: User Stories 문서
- `/docs/presentations/`: 프레젠테이션

---

## 🚧 향후 개선 사항

### Phase 5 (미래)
1. **Google Drive MCP 연동**
   - 자동 Google Docs 생성
   - 자동 Google Slides 생성
   - 공유 및 권한 관리

2. **추가 Sub-Agents**
   - `market-research-agent`: 자동 시장 조사
   - `competitor-analysis-agent`: 경쟁사 모니터링
   - `metrics-analyst-agent`: 데이터 분석 및 인사이트

3. **추가 Skills**
   - `roadmap-planner`: 제품 로드맵 자동 생성
   - `pricing-strategy`: 가격 전략 수립
   - `gtm-strategy`: Go-to-Market 계획

4. **통합 기능**
   - Jira/Linear 자동 연동
   - Figma 디자인 참조
   - GitHub Issues 생성

---

## 🤝 기여 및 피드백

### 기여 방법
1. Fork this repository
2. Create feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open Pull Request

### 피드백
- Issues: GitHub Issues 사용
- Discussions: GitHub Discussions 활용

---

## 📄 라이선스

MIT License

---

## 👨‍💻 Author

**프로젝트 생성자**: [Your Name]
**생성일**: 2026-01-03
**버전**: 1.0

---

## 🙏 Acknowledgments

- **Anthropic**: Claude Code & Claude API
- **PM Community**: Reference 템플릿 및 Best Practices
- **Open Source Community**: 프레임워크 및 방법론

---

**Happy Product Managing! 🚀**
