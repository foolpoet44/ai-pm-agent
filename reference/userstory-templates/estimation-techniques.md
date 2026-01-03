# Estimation Techniques for Agile Teams

## Overview

Estimation helps teams understand the effort required to deliver work, plan sprints effectively, and set realistic expectations with stakeholders.

---

## 1. Story Points

### What are Story Points?

Story points are a unit of measure for expressing the overall effort required to implement a user story. They consider:
- **Complexity:** How difficult is it?
- **Effort:** How much work is involved?
- **Uncertainty:** How much is unknown?

### Fibonacci Sequence (Recommended)

**Scale:** 1, 2, 3, 5, 8, 13, 21, 40, 100

**Why Fibonacci?**
- Reflects increasing uncertainty with size
- Prevents false precision
- Forces meaningful distinctions

**Point Guidelines:**

**1 Point - Trivial**
- 1-2 hours of work
- Well-understood, simple changes
- Example: Fix typo, update button text, add simple validation

**2 Points - Small**
- 2-4 hours of work
- Minor feature with minimal complexity
- Example: Add new field to existing form, simple UI component

**3 Points - Medium-Small**
- 4-8 hours (half day to full day)
- Straightforward feature requiring some thought
- Example: Simple CRUD operation, basic API integration

**5 Points - Medium**
- 1-2 days of work
- Moderate complexity, some unknowns
- Example: User registration flow, search functionality

**8 Points - Large**
- 3-5 days of work
- Complex feature, multiple components
- Example: Payment integration, advanced filtering

**13 Points - Very Large**
- 1 week+ of work
- High complexity, significant unknowns
- **Recommendation:** Break down further
- Example: Complete authentication system

**21+ Points - Too Large**
- Should be broken into smaller stories
- Treated as an Epic

---

## 2. Planning Poker

### How It Works

1. **Prepare:**
   - Each team member gets planning poker cards (1, 2, 3, 5, 8, 13, 21, ?, ☕)
   - Product Owner presents user story

2. **Discuss:**
   - Team asks clarifying questions
   - Discuss implementation approach
   - Identify dependencies and risks

3. **Estimate (Private):**
   - Each member selects a card privately
   - No discussion during selection

4. **Reveal:**
   - All cards revealed simultaneously
   - Prevents anchoring bias

5. **Discuss Differences:**
   - If estimates vary widely, highest and lowest explain their reasoning
   - Team discusses until consensus

6. **Re-estimate:**
   - Team votes again if needed
   - Repeat until consensus (or take average)

### Special Cards

- **?** (Question Mark): Not enough information to estimate
- **☕** (Coffee Cup): Need a break
- **∞** (Infinity): Too large, break it down

### Tips for Success

✅ **Do:**
- Use reference stories for comparison
- Focus on relative sizing, not absolute time
- Listen to all perspectives
- Time-box discussions (5-10 min per story)
- Record assumptions made during estimation

❌ **Don't:**
- Let senior members estimate first (causes anchoring)
- Argue for your estimate aggressively
- Convert points to hours
- Pressure team for lower estimates
- Skip discussion of outlier estimates

---

## 3. T-Shirt Sizing

### When to Use
- Initial backlog grooming
- High-level roadmap planning
- When precision isn't needed
- Non-technical stakeholder discussions

### Sizes

**XS (Extra Small)**
- Less than 1 day
- Minimal complexity
- Example: UI text change, simple bug fix

**S (Small)**
- 1-2 days
- Low complexity
- Example: Add basic form validation

**M (Medium)**
- 3-5 days
- Moderate complexity
- Example: Implement new feature with tests

**L (Large)**
- 1-2 weeks
- High complexity
- Example: Third-party integration

**XL (Extra Large)**
- 2+ weeks
- Very high complexity
- Should be broken down
- Example: Complete new module

**XXL**
- Epic-sized
- Must be decomposed
- Example: Multi-month initiative

### Converting to Story Points

| T-Shirt | Story Points |
|---------|--------------|
| XS | 1-2 |
| S | 3-5 |
| M | 8-13 |
| L | 21-40 |
| XL | 40+ |

---

## 4. Affinity Estimation

### When to Use
- Large backlogs (50+ items)
- Need to estimate quickly
- Team is co-located (or virtual whiteboard)

### Process

1. **Setup:**
   - Create columns: XS, S, M, L, XL
   - Write each story on a card/sticky note

2. **Silent Grouping:**
   - Team members place stories in columns
   - No talking during this phase
   - Move others' cards if you disagree

3. **Discuss:**
   - Review outliers or controversial placements
   - Discuss and reach consensus

4. **Convert:**
   - Assign story points based on column

### Benefits
- Fast (can estimate 50 stories in 30 minutes)
- Team collaboration
- Identifies similar-sized work

---

## 5. Three-Point Estimation

### Formula
**Expected Estimate = (Optimistic + 4×Most Likely + Pessimistic) / 6**

### Example: User Registration Feature

**Optimistic (O):** Best case scenario
- Everything works perfectly: **3 points**

**Most Likely (M):** Realistic scenario
- Normal development: **5 points**

**Pessimistic (P):** Worst case scenario
- Unexpected complexity: **8 points**

**Expected Estimate:**
```
E = (3 + 4×5 + 8) / 6
E = (3 + 20 + 8) / 6
E = 31 / 6
E ≈ 5.2 points → Round to 5 points
```

### When to Use
- High uncertainty
- Critical features
- Team lacks experience in the domain

---

## 6. Bucket System

### When to Use
- Very large backlogs (100+ items)
- Initial epic sizing
- Quick rough estimates

### Process

1. **Create Buckets:**
   - Buckets: 0, 1, 2, 3, 5, 8, 13, 20, 40, 100

2. **Seed Stories:**
   - Team agrees on 2-3 reference stories
   - Place in appropriate buckets

3. **Estimate:**
   - Take story from pile
   - Place in bucket relative to reference stories
   - Team can move if they disagree

4. **Review:**
   - Quickly review each bucket
   - Adjust as needed

### Benefits
- Very fast (100 stories in 1 hour)
- Good for initial sizing
- Creates shared understanding

---

## 7. Estimation Best Practices

### Before Estimation

**Preparation:**
- [ ] User stories are written and ready
- [ ] Acceptance criteria defined
- [ ] Dependencies identified
- [ ] Design mockups available (if needed)
- [ ] Technical approach discussed

**Reference Stories:**
- Maintain a catalog of estimated stories
- Use as comparison points
- Update as team learns

### During Estimation

**Facilitation:**
- Product Owner clarifies, but doesn't estimate
- Developers who will do the work estimate
- QA input on testing complexity
- Time-box discussions

**Consider:**
- **Complexity:** Technical difficulty
- **Effort:** Amount of work
- **Risk/Uncertainty:** Unknowns
- **Dependencies:** External blockers

**Don't Consider:**
- Who will do the work
- When it will be done
- Interruptions or meetings

### After Estimation

**Track Velocity:**
- Sum of story points completed per sprint
- Calculate average over 3-5 sprints
- Use for sprint planning

**Refine Over Time:**
- Re-estimate if story changes significantly
- Learn from actual effort vs estimate
- Adjust future estimates based on learnings

---

## 8. Velocity and Capacity

### Velocity

**Definition:** Average story points completed per sprint

**Calculation:**
```
Sprint 1: 23 points
Sprint 2: 28 points
Sprint 3: 25 points
Sprint 4: 22 points
Sprint 5: 27 points

Velocity = (23 + 28 + 25 + 22 + 27) / 5 = 25 points/sprint
```

**Using Velocity:**
- Plan sprints based on average velocity
- Don't commit to more than velocity allows
- Track trends (increasing, stable, decreasing)

### Capacity Planning

**Consider:**
- Team size
- Sprint duration
- Planned time off
- Meetings and ceremonies
- Support/maintenance work

**Example:**
```
Team: 5 developers
Sprint: 2 weeks (10 working days)
Availability: 80% (accounting for meetings, support)

Capacity = 5 × 10 days × 0.8 = 40 person-days
Historical Velocity: 25 points
Sprint Commitment: ~25 points (not 40 days)
```

---

## 9. Common Estimation Challenges

### Challenge 1: Wide Variation in Estimates

**Problem:** Team estimates range from 3 to 13 points

**Solution:**
- Highest and lowest explain reasoning
- Identify different assumptions
- Clarify requirements
- Break down story if needed

### Challenge 2: Estimating Too High

**Problem:** Team consistently overestimates

**Solution:**
- Review completed stories
- Identify patterns of overestimation
- Recalibrate using reference stories
- Consider if team is risk-averse

### Challenge 3: Estimating Too Low

**Problem:** Stories consistently take longer than estimated

**Solution:**
- Include testing time in estimates
- Account for code review time
- Consider integration complexity
- Add buffer for unknowns

### Challenge 4: Pressure to Reduce Estimates

**Problem:** Stakeholders want lower estimates

**Solution:**
- Explain relative sizing concept
- Show historical velocity data
- Discuss reducing scope, not estimates
- Educate on estimation purpose

### Challenge 5: New Team Members

**Problem:** New members don't have context

**Solution:**
- Pair new members with experienced ones
- Explain reference stories
- Let them observe first few sessions
- Their estimates are still valid perspectives

---

## 10. Estimation Anti-Patterns

### ❌ Anti-Pattern 1: Converting Points to Hours

**Why it's bad:**
- Defeats purpose of relative sizing
- Creates false precision
- Ignores individual differences

**Instead:**
- Keep points abstract
- Focus on relative complexity
- Use velocity for planning

### ❌ Anti-Pattern 2: Estimation by Authority

**Why it's bad:**
- Senior person estimates alone
- Team doesn't buy in
- Misses important perspectives

**Instead:**
- Whole team participates
- All voices heard equally
- Build consensus

### ❌ Anti-Pattern 3: Analysis Paralysis

**Why it's bad:**
- 30-minute debates on single story
- Diminishing returns
- Team fatigue

**Instead:**
- Time-box discussions (5-10 min)
- Table complex stories for more research
- Accept "good enough" estimates

### ❌ Anti-Pattern 4: Changing Past Estimates

**Why it's bad:**
- Invalidates velocity data
- Hides learning opportunities
- Creates mistrust

**Instead:**
- Keep original estimates
- Track actual effort separately
- Use for future calibration

### ❌ Anti-Pattern 5: Estimating in Hours

**Why it's bad:**
- Implies false precision
- Varies by person
- Creates pressure

**Instead:**
- Use story points
- Focus on relative size
- Accept uncertainty

---

## 11. Tools for Estimation

### Physical Tools
- Planning poker cards
- Sticky notes
- Whiteboard

### Digital Tools
- **Jira:** Built-in story points, velocity tracking
- **Planning Poker Online:** planningpokeronline.com
- **Scrum Poker:** scrumpoker.online
- **Miro/Mural:** Virtual affinity estimation
- **Linear:** Story points and estimation
- **Azure DevOps:** Capacity planning

---

## 12. Estimation Checklist

**Before estimating a story:**
- [ ] User story is clear and complete
- [ ] Acceptance criteria defined
- [ ] Design mockups available (if needed)
- [ ] Dependencies identified
- [ ] Team has asked clarifying questions
- [ ] Reference stories available for comparison

**During estimation:**
- [ ] All team members participate
- [ ] Estimates are revealed simultaneously
- [ ] Outliers are discussed
- [ ] Consensus is reached
- [ ] Assumptions are documented

**After estimation:**
- [ ] Estimate is recorded in tracking tool
- [ ] Story is properly prioritized
- [ ] Dependencies are tracked
- [ ] Team has shared understanding

---

## 13. Estimation Workshop Template

### Agenda (90 minutes)

**1. Introduction (10 min)**
- Review estimation goals
- Explain process
- Establish reference stories

**2. Quick Wins (20 min)**
- Estimate obvious small stories
- Build momentum
- Calibrate team

**3. Main Estimation (50 min)**
- Planning poker for prioritized stories
- 5-10 minutes per story
- Break for complex discussions

**4. Review (10 min)**
- Summarize estimates
- Identify stories needing more research
- Plan follow-up

---

## Resources

**Books:**
- "Agile Estimating and Planning" by Mike Cohn
- "Software Estimation: Demystifying the Black Art" by Steve McConnell

**Online:**
- Mountain Goat Software: Planning Poker guidance
- Scrum.org: Estimation articles
- Atlassian Agile Coach: Estimation resources
