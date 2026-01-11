---
type: dashboard
title: "2025 Strategic Planning Dashboard"
last-updated: {{date:YYYY-MM-DD}}
---

# 📊 2025 전략 실행 대시보드

> [!info] 대시보드 정보
> **최종 업데이트**: {{date:YYYY-MM-DD HH:mm}}
> **데이터 기준**: 실시간 (Dataview 기반)

---

## 🎯 전략 목표 현황

### 우선순위별 목표
```dataview
TABLE 
  status as "상태",
  owner as "책임자",
  progress + "%" as "진척률",
  timeline.end as "마감일"
FROM "03-Strategic-Objectives"
SORT priority ASC, progress DESC
```

### 진척률 분포
```dataviewjs
const objectives = dv.pages('"03-Strategic-Objectives"');
const ranges = {
  "🔴 0-25%": 0,
  "🟡 26-50%": 0,
  "🟢 51-75%": 0,
  "🟣 76-99%": 0,
  "✅ 100%": 0
};

for (let obj of objectives) {
  const p = obj.progress || 0;
  if (p === 0 || p <= 25) ranges["🔴 0-25%"]++;
  else if (p <= 50) ranges["🟡 26-50%"]++;
  else if (p <= 75) ranges["🟢 51-75%"]++;
  else if (p < 100) ranges["🟣 76-99%"]++;
  else ranges["✅ 100%"]++;
}

dv.paragraph(Object.entries(ranges)
  .map(([range, count]) => `${range}: ${count}개 목표`)
  .join(" | "));
```

### 전체 목표 달성률
```dataviewjs
const objectives = dv.pages('"03-Strategic-Objectives"');
const total = objectives.length;
const avgProgress = objectives.values
  .reduce((sum, obj) => sum + (obj.progress || 0), 0) / total;

dv.paragraph(`
전체 평균 진척률: **${Math.round(avgProgress)}%**
${"█".repeat(Math.round(avgProgress/5))}${"░".repeat(20-Math.round(avgProgress/5))}
`);
```

---

## 🚀 핵심 과제 현황

### P0 (Critical) 과제
```dataview
TABLE 
  status as "상태",
  owner as "책임자",
  progress + "%" as "진척률",
  timeline.end as "마감일"
FROM "04-Key-Initiatives"
WHERE priority = "P0" AND status != "✅ Completed"
SORT timeline.end ASC
```

### 진행 중인 과제 (전체)
```dataview
TABLE 
  priority as "우선순위",
  status as "상태",
  owner as "책임자",
  progress + "%" as "진척률"
FROM "04-Key-Initiatives"
WHERE status = "🚀 In Progress"
SORT priority ASC, progress DESC
LIMIT 10
```

### 이번 주 마감 과제
```dataview
TABLE 
  priority as "우선순위",
  owner as "책임자",
  timeline.end as "마감일",
  progress + "%" as "진척률"
FROM "04-Key-Initiatives"
WHERE timeline.end >= date(today) AND timeline.end <= date(today) + dur(7 days)
SORT timeline.end ASC
```

---

## 📋 이번 주 액션

### 금주 실행계획
```dataview
TABLE 
  initiative as "과제",
  owner as "책임자",
  progress + "%" as "진척률",
  status as "상태"
FROM "05-Action-Plans"
WHERE start-date <= date(today) AND end-date >= date(today)
SORT priority ASC
```

### High Priority 태스크
```dataview
TASK
FROM "05-Action-Plans/Weekly-Actions"
WHERE !completed AND contains(text, "P0")
LIMIT 10
```

### 미완료 태스크 (전체)
```dataview
TASK
FROM "05-Action-Plans"
WHERE !completed
GROUP BY file.link
LIMIT 20
```

---

## ⚠️ 주의 필요 항목

### 지연 과제
```dataview
TABLE 
  status as "상태",
  owner as "책임자",
  timeline.end as "원 마감일",
  progress + "%" as "진척률"
FROM "04-Key-Initiatives"
WHERE timeline.end < date(today) AND status != "✅ Completed"
SORT timeline.end ASC
```

### 블로커 있는 과제
```dataviewjs
const initiatives = dv.pages('"04-Key-Initiatives"')
  .where(p => p.blockers && p.blockers.length > 0);

dv.table(
  ["과제", "블로커", "책임자"],
  initiatives.map(p => [
    p.file.link,
    p.blockers.join(", "),
    p.owner
  ])
);
```

### 진척률 0% 과제
```dataview
TABLE 
  priority as "우선순위",
  owner as "책임자",
  timeline.start as "시작일",
  status as "상태"
FROM "04-Key-Initiatives"
WHERE (progress = 0 OR !progress) AND status != "📝 Planning"
SORT priority ASC
```

---

## 📊 전략 테마별 현황

### 테마별 목표 분포
```dataviewjs
const themes = dv.pages('"02-Strategic-Themes"');
const objectives = dv.pages('"03-Strategic-Objectives"');

const themeStats = themes.map(theme => {
  const relatedObjs = objectives
    .where(obj => obj.theme && obj.theme.path === theme.file.path);
  const avgProgress = relatedObjs.length > 0
    ? relatedObjs.values.reduce((sum, obj) => sum + (obj.progress || 0), 0) / relatedObjs.length
    : 0;
  
  return [
    theme.file.link,
    relatedObjs.length,
    Math.round(avgProgress) + "%"
  ];
});

dv.table(["테마", "목표 수", "평균 진척률"], themeStats);
```

### 테마별 과제 현황
```dataview
TABLE 
  rows.file.link as "과제",
  length(rows) as "과제 수",
  round(sum(rows.progress) / length(rows), 0) + "%" as "평균 진척률"
FROM "04-Key-Initiatives"
GROUP BY theme
SORT length(rows) DESC
```

---

## 👥 책임자별 현황

### 책임자별 과제 수
```dataview
TABLE 
  rows.file.link as "과제 목록",
  length(rows) as "담당 과제",
  round(sum(rows.progress) / length(rows), 0) + "%" as "평균 진척률"
FROM "04-Key-Initiatives"
WHERE owner
GROUP BY owner
SORT length(rows) DESC
```

---

## 📈 최근 활동

### 이번 주 업데이트된 문서
```dataview
TABLE 
  file.mtime as "최종 수정",
  type as "유형",
  status as "상태"
FROM "03-Strategic-Objectives" OR "04-Key-Initiatives" OR "05-Action-Plans"
WHERE file.mtime >= date(today) - dur(7 days)
SORT file.mtime DESC
LIMIT 10
```

### 최근 완료된 과제
```dataview
TABLE 
  timeline.end as "완료일",
  owner as "책임자",
  priority as "우선순위"
FROM "04-Key-Initiatives"
WHERE status = "✅ Completed"
SORT timeline.end DESC
LIMIT 5
```

---

## 📅 타임라인 뷰

### 이번 분기 마일스톤
```dataview
TABLE 
  file.link as "과제/목표",
  timeline.start as "시작",
  timeline.end as "종료",
  progress + "%" as "진척률"
FROM "03-Strategic-Objectives" OR "04-Key-Initiatives"
WHERE timeline.quarter = "2025-Q1"
SORT timeline.end ASC
```

### 다음 30일 마감 일정
```dataview
CALENDAR timeline.end
FROM "04-Key-Initiatives"
WHERE timeline.end >= date(today) AND timeline.end <= date(today) + dur(30 days)
```

---

## 🎯 KPI 트래킹

### 주요 KPI 현황
```dataviewjs
// Strategic Objectives의 KPI를 수집하여 표시
const objectives = dv.pages('"03-Strategic-Objectives"')
  .where(p => p.kpis);

const kpiData = [];
for (let obj of objectives) {
  if (obj.kpis && Array.isArray(obj.kpis)) {
    obj.kpis.forEach(kpi => {
      kpiData.push([
        obj.file.link,
        kpi.metric || "N/A",
        kpi.baseline || "N/A",
        kpi.target || "N/A",
        kpi.current || "N/A",
        kpi.achievement || "0%"
      ]);
    });
  }
}

if (kpiData.length > 0) {
  dv.table(
    ["목표", "KPI", "Baseline", "Target", "Current", "달성률"],
    kpiData
  );
} else {
  dv.paragraph("*KPI 데이터가 아직 입력되지 않았습니다.*");
}
```

---

## 📊 통계 요약

```dataviewjs
const objectives = dv.pages('"03-Strategic-Objectives"');
const initiatives = dv.pages('"04-Key-Initiatives"');
const actionPlans = dv.pages('"05-Action-Plans"');

const stats = {
  "전략 목표": objectives.length,
  "핵심 과제": initiatives.length,
  "실행계획": actionPlans.length,
  "진행중 과제": initiatives.where(p => p.status === "🚀 In Progress").length,
  "완료 과제": initiatives.where(p => p.status === "✅ Completed").length,
  "지연 과제": initiatives.where(p => p.timeline && p.timeline.end < dv.date("today") && p.status !== "✅ Completed").length
};

dv.paragraph(Object.entries(stats)
  .map(([key, val]) => `**${key}**: ${val}`)
  .join(" | "));
```

---

## 🔄 최근 7일 진척

```dataviewjs
// 최근 7일간의 Weekly Review에서 진척 상황 추이 표시
const reviews = dv.pages('"06-Progress-Tracking/Weekly-Review"')
  .sort(p => p.file.name, 'desc')
  .limit(4);

dv.table(
  ["주차", "완료 태스크", "진척률", "주요 성과"],
  reviews.map(r => [
    r.file.link,
    r["tasks-completed"] || "N/A",
    r.progress || "N/A",
    r.achievement || "N/A"
  ])
);
```

---

## 💡 Quick Actions

### 자주 사용하는 링크
- [[Templates/strategic-message|새 전략 메시지 작성]]
- [[Templates/strategic-objective|새 전략 목표 작성]]
- [[Templates/key-initiative|새 핵심 과제 작성]]
- [[Templates/action-plan|새 실행계획 작성]]
- [[06-Progress-Tracking/Weekly-Review/|주간 리뷰 작성]]

### 빠른 검색
- 태그로 찾기: #DX #AX #People #Innovation
- 책임자로 찾기: `owner:"이름"`
- 상태로 찾기: `status:"🚀 In Progress"`

---

**대시보드 새로고침**: {{date:YYYY-MM-DD HH:mm}}
**다음 업데이트**: 실시간 (Dataview 자동)
