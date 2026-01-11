#!/bin/bash

# Strategic Planning 2025 Vault Setup Script
# This script creates the complete folder structure for the Obsidian vault

echo "🚀 Setting up Strategic Planning 2025 Vault..."

# Create main folder structure
echo "📁 Creating folder structure..."

mkdir -p "00-Inbox/Archive"
mkdir -p "01-Strategic-Messages"
mkdir -p "02-Strategic-Themes"
mkdir -p "03-Strategic-Objectives"
mkdir -p "04-Key-Initiatives"
mkdir -p "05-Action-Plans/Weekly-Actions"
mkdir -p "06-Progress-Tracking/Weekly-Review"
mkdir -p "06-Progress-Tracking/Monthly-Report"
mkdir -p "Templates"
mkdir -p "Scripts"
mkdir -p ".obsidian"

echo "✅ Folder structure created!"

# Create README files for each folder
echo "📝 Creating README files..."

cat > "01-Strategic-Messages/README.md" << 'EOF'
# 📨 Strategic Messages

신년사, 지시사항에서 추출한 구조화된 전략 메시지를 저장합니다.

## 템플릿
`Templates/strategic-message.md` 사용

## 파일명 규칙
`[발신자]-[날짜]-[제목].md`

예: `CEO-2025-01-01-신년사.md`
EOF

cat > "02-Strategic-Themes/README.md" << 'EOF'
# 🏷️ Strategic Themes

공통 주제별로 그룹핑된 전략 테마를 저장합니다.

## 템플릿
`Templates/strategic-theme.md` 사용

## 파일명 규칙
`[Theme-ID]-[Theme-Name].md`

예: `ST-001-DX-Transformation.md`
EOF

cat > "03-Strategic-Objectives/README.md" << 'EOF'
# 🎯 Strategic Objectives

측정 가능한 SMART 목표를 저장합니다.

## 템플릿
`Templates/strategic-objective.md` 사용

## 파일명 규칙
`SO-[번호]-[목표명].md`

예: `SO-001-스마트팩토리-자동화.md`
EOF

cat > "04-Key-Initiatives/README.md" << 'EOF'
# 🚀 Key Initiatives

전략 목표를 달성하기 위한 핵심 과제를 저장합니다.

## 템플릿
`Templates/key-initiative.md` 사용

## 파일명 규칙
`KI-[번호]-[과제명].md`

예: `KI-001-MES-시스템-고도화.md`
EOF

cat > "05-Action-Plans/README.md" << 'EOF'
# 📋 Action Plans

분기별/주간 실행 계획을 저장합니다.

## 템플릿
`Templates/action-plan.md` 사용

## 파일명 규칙
`AP-[번호]-[Q분기]-[제목].md`

예: `AP-001-Q1-스마트팩토리-구축.md`
EOF

cat > "06-Progress-Tracking/README.md" << 'EOF'
# 📊 Progress Tracking

주간 리뷰, 월간 보고서, 대시보드를 관리합니다.

## 구조
- `Weekly-Review/`: 주간 회고
- `Monthly-Report/`: 월간 보고서
- `Dashboard-2025.md`: 통합 대시보드
EOF

echo "✅ README files created!"

echo ""
echo "🎉 Vault setup complete!"
echo ""
echo "Next steps:"
echo "1. Open this folder in Obsidian (Open folder as vault)"
echo "2. Install required plugins: Dataview, Templater, Calendar, Tasks, Kanban"
echo "3. Add your first strategic document to 00-Inbox/"
echo "4. Start analyzing with Claude!"
echo ""
echo "For detailed instructions, see QUICKSTART.md"
