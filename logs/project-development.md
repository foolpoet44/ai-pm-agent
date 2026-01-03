# AI PM Agent 프로젝트 개발 로그

## [2026-01-01 09:45] Phase 1 시작 - 환경 설정

### 현재 작업
- 프로젝트 폴더 구조 생성

### 생성/수정 파일
- `/sub_agents/idea-agent/` - 아이디어 발굴/검증 에이전트 폴더
- `/sub_agents/prd-agent/` - PRD 작성 에이전트 폴더
- `/sub_agents/userstory-agent/` - 유저스토리 작성 에이전트 폴더
- `/skills/idea-generation/` - 아이디어 생성 스킬 폴더
- `/skills/prd-documentation/` - PRD 문서화 스킬 폴더
- `/skills/userstory-documentation/` - 유저스토리 문서화 스킬 폴더
- `/skills/pm-knowledge-base/` - PM 지식 베이스 스킬 폴더
- `/skills/google-docs-writer/` - Google Docs 작성 스킬 폴더
- `/skills/presentation-generator/` - 프레젠테이션 생성 스킬 폴더
- `/logs/` - 로그 파일 폴더
- `/config/` - 설정 파일 폴더

### 결정 사항
- 프로젝트 루트: `/Users/dkmac/Library/CloudStorage/GoogleDrive-foolpoet44@gmail.com/내 드라이브/26년/PM_pjt`
- Sub-Agent 3개, Skill 6개 생성 예정
- 모든 작업 과정 실시간 로깅 원칙

### 다음 단계
- skill-creator 로드 및 Best Practice 확인
- Google Drive MCP 연결 테스트
- Reference 폴더 접근 확인

### 이슈/해결
- 없음

---

## [2026-01-01 10:00] Skill 시스템 학습 완료

### 현재 작업
- Claude Code Skills 시스템 이해 및 Best Practice 확인

### 학습 내용
1. **Skill 저장 위치**:
   - Personal Skills: `~/.claude/skills/` (모든 프로젝트에서 사용)
   - Project Skills: `.claude/skills/` (현재 프로젝트 팀에서만 사용)
   - 본 프로젝트는 `.claude/skills/` 사용 (팀 공유 목적)

2. **SKILL.md 필수 구조**:
   ```yaml
   ---
   name: skill-name (소문자, 숫자, 하이픈만 사용)
   description: Claude가 자동 활성화에 사용하는 설명 (매우 중요!)
   allowed-tools: Read, Grep, Glob (선택사항)
   model: claude-sonnet-4-20250514 (선택사항)
   ---

   # Skill 내용
   ```

3. **Skills vs Sub-Agents**:
   - Skills: 지식과 지침 추가 (현재 대화 컨텍스트에 통합)
   - Sub-Agents: 독립적인 AI 전문가 (별도 컨텍스트에서 실행)
   - 둘 다 필요: Skills은 재사용 가능한 지식, Sub-Agents는 복잡한 작업 위임

### 결정 사항
- Anthropic의 "skill-creator"는 별도 도구가 아니라 Claude 자체가 Skill 생성을 도와주는 방식
- 본 프로젝트는 `.claude/skills/` 경로에 Skills 생성 (팀 공유)
- Sub-Agents는 `/agents` 명령어나 직접 구조화하여 생성

### 다음 단계
- Google Drive MCP 연결 테스트 및 Reference 폴더 접근 확인

---

## [2026-01-01 10:15] Reference 템플릿 파일 생성 완료

### 현재 작업
- PM Reference 템플릿 파일 생성

### 생성/수정 파일
**Idea Templates:**
- `/reference/idea-templates/lean-canvas-template.md` - Lean Canvas 방법론 템플릿
- `/reference/idea-templates/problem-solution-fit.md` - 문제-솔루션 Fit 프레임워크
- `/reference/idea-templates/market-analysis-guide.md` - 시장 분석 가이드 (TAM/SAM/SOM, 경쟁 분석, PESTLE)

**PRD Templates:**
- `/reference/prd-templates/standard-prd-template.md` - 표준 PRD 템플릿 (15개 섹션)
- `/reference/prd-templates/feature-spec-template.md` - 개별 Feature 명세 템플릿

**User Story Templates:**
- `/reference/userstory-templates/epic-story-task-structure.md` - Epic/Story/Task 계층 구조 가이드
- `/reference/userstory-templates/acceptance-criteria-guide.md` - Acceptance Criteria 작성 가이드
- `/reference/userstory-templates/estimation-techniques.md` - Story Point 추정 기법 (Planning Poker, T-Shirt Sizing 등)

### 결정 사항
- Google Drive MCP가 현재 설정되지 않아, 로컬 `/reference/` 폴더에 템플릿 생성
- 나중에 Google Drive로 이동 가능하도록 구조화
- 각 Skill은 이 Reference 파일들을 Read 도구로 참조하도록 구현 예정

### 다음 단계
- Phase 2: Sub-Agent 3개 생성 (idea-agent, prd-agent, userstory-agent)
- Phase 3: Skill 6개 생성

---

## [2026-01-03 19:10] Phase 2 완료 - Sub-Agents 생성

### 현재 작업
- Sub-Agent 3개 AGENT.md 파일 생성

### 생성/수정 파일
1. **`.claude/agents/idea-agent/AGENT.md`**
   - 역할: 비즈니스 아이디어 발굴 및 검증
   - 도구: Read, Grep, Glob, Write, Edit
   - 모델: Sonnet
   - 주요 기능:
     - Lean Canvas 작성
     - Problem-Solution Fit 검증
     - 시장 분석 (TAM/SAM/SOM)
     - 경쟁 분석
     - Idea Validation Report 생성

2. **`.claude/agents/prd-agent/AGENT.md`**
   - 역할: Product Requirements Document 작성
   - 도구: Read, Grep, Glob, Write, Edit
   - 모델: Sonnet
   - 주요 기능:
     - 15개 섹션 완전한 PRD 작성
     - OKR, 성공 지표 정의
     - User Story 및 Acceptance Criteria
     - 기술 사양, API 요구사항
     - 비기능 요구사항 (성능, 보안, 접근성)

3. **`.claude/agents/userstory-agent/AGENT.md`**
   - 역할: User Story, Epic, Task 작성
   - 도구: Read, Grep, Glob, Write, Edit
   - 모델: Sonnet
   - 주요 기능:
     - Epic/Story/Task 계층 구조화
     - INVEST 기준 준수
     - Given-When-Then Acceptance Criteria
     - Story Point 추정
     - MoSCoW/RICE 우선순위 지정

### 결정 사항
- Sub-Agent는 `.claude/agents/` 폴더에 위치
- 각 Sub-Agent는 해당하는 Skill들을 활용하도록 설계
- Reference 템플릿을 Read 도구로 참조하는 구조

### 다음 단계
- Phase 3: Skill 6개 생성

---

## [2026-01-03 20:00] Phase 3 완료 - Skills 생성

### 현재 작업
- Skill 6개 SKILL.md 파일 생성

### 생성/수정 파일

1. **`.claude/skills/pm-knowledge-base/SKILL.md`**
   - PM 프레임워크 및 방법론 라이브러리
   - 우선순위 지정: RICE, MoSCoW, Kano Model, Value vs Effort
   - 목표 설정: OKR, SMART, North Star Metric
   - 고객 리서치: Jobs-to-be-Done, Persona, Interview
   - 제품 전략: Blue Ocean, Positioning, GTM
   - 메트릭스: AARRR, 핵심 지표, A/B Testing

2. **`.claude/skills/idea-generation/SKILL.md`**
   - 비즈니스 아이디어 생성 및 검증
   - Lean Canvas 프레임워크 적용
   - Problem-Solution Fit 검증
   - 시장 분석 (TAM/SAM/SOM, 경쟁, PESTLE)
   - Customer Persona 생성
   - Idea Validation Report 출력

3. **`.claude/skills/prd-documentation/SKILL.md`**
   - PRD 및 Feature Spec 작성
   - 15개 섹션 표준 PRD 구조
   - User Story, Acceptance Criteria
   - 기능 요구사항 (Functional)
   - 비기능 요구사항 (Performance, Security, Accessibility)
   - 기술 사양, API, Data Model

4. **`.claude/skills/userstory-documentation/SKILL.md`**
   - Epic, User Story, Task 작성
   - INVEST 기준 준수
   - Given-When-Then Acceptance Criteria
   - Story Point 추정 (Fibonacci scale)
   - Prioritization (MoSCoW, RICE)
   - Epic Breakdown 완전한 예시 포함

5. **`.claude/skills/google-docs-writer/SKILL.md`**
   - Markdown to Google Docs 변환 전문
   - 문서 타입별 포맷팅 (PRD, User Stories, Idea Report)
   - 스타일 가이드라인 (폰트, 색상, 레이아웃)
   - 접근성 요구사항 (WCAG AA)
   - Workaround 제공 (MCP 미설정 시)

6. **`.claude/skills/presentation-generator/SKILL.md`**
   - Google Slides 프레젠테이션 생성
   - 프레젠테이션 타입별 템플릿:
     - Product Pitch Deck (12 slides)
     - PRD Review (15 slides)
     - Sprint Review (8 slides)
     - Roadmap (10 slides)
   - 디자인 원칙, 색상 팔레트, 타이포그래피
   - 청중별 맞춤 (Executives, Team, Customers, Investors)

### 결정 사항
- Skills는 `.claude/skills/` 폴더에 위치 (프로젝트 레벨)
- 각 Skill은 `allowed-tools`로 필요한 도구만 지정
- Reference 템플릿 파일을 Read 도구로 참조
- Google Drive MCP 미설정 시 Workaround 제공

### 이슈/해결
- Google Drive MCP가 설정되지 않음 → Skills에 Workaround 포함
- google-docs-writer와 presentation-generator는 MCP 없이도 Markdown 형식 출력 제공

### 다음 단계
- Phase 4: 통합 테스트 (샘플 아이디어로 전체 플로우 실행)
- README.md 작성 및 프로젝트 문서화
