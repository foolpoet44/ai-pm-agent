# Epic-Story-Task Structure Guide

## Hierarchy Overview

```
Epic (Large Feature Area)
├── Story 1 (User-Facing Functionality)
│   ├── Task 1.1 (Technical Implementation)
│   ├── Task 1.2
│   └── Task 1.3
├── Story 2
│   ├── Task 2.1
│   └── Task 2.2
└── Story 3
    └── Task 3.1
```

---

## 1. Epic Level

### What is an Epic?
An Epic is a large body of work that can be broken down into smaller user stories. It typically represents a significant feature area or business initiative.

### Epic Template
```
Epic Name: [Verb] + [Feature Area]
Example: "User Authentication System"

Description:
As a [user type],
I want [high-level capability],
So that [business value].

Business Value:
- [Why this matters to the business]
- [Expected impact]

Success Metrics:
- Metric 1: [Target value]
- Metric 2: [Target value]

Timeline: [Estimated duration]
Priority: High | Medium | Low
```

### Epic Example
```
Epic: User Authentication System

Description:
As a platform user,
I want a secure and easy way to access my account,
So that I can safely use the platform's features.

Business Value:
- Enable user personalization and data security
- Foundation for premium features
- Increase user trust and retention

Success Metrics:
- 90% of users successfully authenticate on first attempt
- < 2% account security incidents
- 80% user satisfaction with login experience

Timeline: 4-6 weeks
Priority: High
```

---

## 2. User Story Level

### What is a User Story?
A user story is a small, independent piece of functionality told from the user's perspective. It should be completable within one sprint (1-2 weeks).

### User Story Template
```
Story ID: [PROJ-###]
Story Name: [User action/outcome]

User Story:
As a [specific user type],
I want to [specific action],
So that [specific benefit].

Acceptance Criteria:
Given [context/precondition]
When [action/event]
Then [expected outcome]
And [additional outcome]

Priority: P0 (Must) | P1 (Should) | P2 (Could) | P3 (Won't)
Story Points: 1, 2, 3, 5, 8, 13
Dependencies: [Story IDs]
```

### INVEST Criteria
Good user stories are:
- **I**ndependent: Can be developed in any order
- **N**egotiable: Details can be discussed
- **V**aluable: Delivers value to users
- **E**stimable: Can be sized/estimated
- **S**mall: Fits in one sprint
- **T**estable: Clear acceptance criteria

### User Story Example
```
Story ID: AUTH-001
Story Name: Email/Password Registration

User Story:
As a new user,
I want to register with email and password,
So that I can create a personal account.

Acceptance Criteria:
Given I am on the registration page
When I enter a valid email and password
Then my account is created
And I receive a confirmation email
And I am redirected to the onboarding flow

Given I enter an invalid email format
When I click submit
Then I see an error message "Please enter a valid email"
And the form does not submit

Given I enter a password less than 8 characters
When I click submit
Then I see an error message "Password must be at least 8 characters"
And the form does not submit

Priority: P0 (Must Have)
Story Points: 5
Dependencies: None
```

---

## 3. Task Level

### What is a Task?
Tasks are technical implementation steps required to complete a user story. They are typically assigned to individual developers.

### Task Template
```
Task ID: [PROJ-###-T#]
Task Name: [Technical action]

Description:
[What needs to be built/done]

Technical Details:
- [Implementation approach]
- [Files to modify]
- [APIs to call]

Acceptance Criteria:
- [ ] Criterion 1
- [ ] Criterion 2
- [ ] Unit tests written

Estimated Hours: [X hours]
Assigned To: [Developer name]
Status: To Do | In Progress | In Review | Done
```

### Task Example
```
Task ID: AUTH-001-T1
Task Name: Create User Registration API Endpoint

Description:
Build POST /api/auth/register endpoint to handle user registration

Technical Details:
- Framework: Express.js
- Validation: email format, password strength (min 8 chars, 1 number, 1 special char)
- Hash password using bcrypt (salt rounds: 10)
- Store user in PostgreSQL database
- Send confirmation email via SendGrid
- Return JWT token

Files to Modify:
- routes/auth.js
- controllers/authController.js
- models/User.js
- middleware/validation.js

Acceptance Criteria:
- [ ] Endpoint accepts email and password in request body
- [ ] Email validation regex implemented
- [ ] Password validation implemented
- [ ] Password hashed before storage
- [ ] User record created in database
- [ ] Confirmation email sent
- [ ] JWT token returned in response
- [ ] Unit tests cover happy path and error cases
- [ ] Integration test passes

Estimated Hours: 4 hours
Assigned To: John Doe
Status: To Do
```

---

## 4. Breaking Down Work

### From Epic to Stories

**Epic:** User Authentication System

**Stories:**
1. AUTH-001: Email/Password Registration
2. AUTH-002: Email/Password Login
3. AUTH-003: Password Reset Flow
4. AUTH-004: Email Verification
5. AUTH-005: Social Login (Google)
6. AUTH-006: Two-Factor Authentication

### From Story to Tasks

**Story:** AUTH-001: Email/Password Registration

**Tasks:**
1. AUTH-001-T1: Create user registration API endpoint
2. AUTH-001-T2: Build registration form UI
3. AUTH-001-T3: Implement client-side validation
4. AUTH-001-T4: Create email confirmation service
5. AUTH-001-T5: Design confirmation email template
6. AUTH-001-T6: Write API integration tests
7. AUTH-001-T7: Write UI component tests
8. AUTH-001-T8: Update API documentation

---

## 5. Estimation Techniques

### Story Points (Fibonacci Scale)
- **1 point:** Trivial change (1-2 hours)
  - Example: Update text on a button
- **2 points:** Simple task (2-4 hours)
  - Example: Add a new field to a form
- **3 points:** Straightforward feature (4-8 hours)
  - Example: Basic CRUD operation
- **5 points:** Moderate complexity (1-2 days)
  - Example: Registration with validation
- **8 points:** Complex feature (3-5 days)
  - Example: Payment integration
- **13 points:** Very complex, should be broken down
  - Example: Full authentication system

### Planning Poker
1. Product Owner reads user story
2. Team discusses and asks questions
3. Each member privately selects estimate
4. All reveal simultaneously
5. Discuss discrepancies
6. Re-estimate until consensus

### T-Shirt Sizing
- **XS:** Quick fix (< 1 day)
- **S:** Small feature (1-2 days)
- **M:** Medium feature (3-5 days)
- **L:** Large feature (1-2 weeks)
- **XL:** Very large, break down further

---

## 6. Prioritization Frameworks

### MoSCoW Method
- **Must Have:** Critical for release
- **Should Have:** Important but not critical
- **Could Have:** Nice to have if time permits
- **Won't Have:** Not in this release

### RICE Score
**Formula:** (Reach × Impact × Confidence) / Effort

- **Reach:** How many users affected? (per quarter)
- **Impact:** How much impact? (3=massive, 2=high, 1=medium, 0.5=low, 0.25=minimal)
- **Confidence:** How confident? (100%=high, 80%=medium, 50%=low)
- **Effort:** How much effort? (person-months)

**Example:**
```
Story: Social Login
- Reach: 1000 users/quarter
- Impact: 2 (high)
- Confidence: 80%
- Effort: 0.5 person-months

RICE Score = (1000 × 2 × 0.8) / 0.5 = 3200
```

### Value vs Effort Matrix
```
High Value, Low Effort → Do First (Quick Wins)
High Value, High Effort → Do Second (Big Bets)
Low Value, Low Effort → Do Third (Fill-ins)
Low Value, High Effort → Don't Do (Time Sinks)
```

---

## 7. Status Tracking

### Story Status Flow
```
Backlog → To Do → In Progress → In Review → Done
```

**Backlog:** Not yet prioritized
**To Do:** Prioritized for current/next sprint
**In Progress:** Actively being worked on
**In Review:** Code review, QA testing
**Done:** Meets Definition of Done

### Definition of Done (DoD)
A story is "Done" when:
- [ ] Code complete and peer reviewed
- [ ] Unit tests written and passing (>80% coverage)
- [ ] Integration tests passing
- [ ] Acceptance criteria met
- [ ] Documentation updated
- [ ] No critical or high-severity bugs
- [ ] Product Owner approved
- [ ] Deployed to staging environment

---

## 8. Example: Complete Epic Breakdown

### Epic: E-commerce Shopping Cart

**Epic Description:**
As a shopper, I want a shopping cart, so that I can purchase multiple items at once.

**User Stories:**

**Story 1: Add Item to Cart**
```
As a shopper,
I want to add items to my cart,
So that I can purchase them later.

Acceptance Criteria:
- User can click "Add to Cart" on product page
- Item appears in cart with correct details
- Cart count badge updates
- User sees confirmation message

Story Points: 5
Priority: P0
```

**Tasks for Story 1:**
- T1: Create cart data model (2h)
- T2: Build "Add to Cart" API endpoint (3h)
- T3: Implement "Add to Cart" button UI (2h)
- T4: Update cart count badge (1h)
- T5: Show confirmation toast (1h)
- T6: Write unit tests (2h)
- T7: Write integration tests (2h)

**Story 2: View Cart**
```
As a shopper,
I want to view my cart,
So that I can see what I'm about to purchase.

Acceptance Criteria:
- User can navigate to cart page
- Cart displays all added items
- Shows item name, image, price, quantity
- Shows subtotal and total

Story Points: 3
Priority: P0
```

**Story 3: Update Quantity**
```
As a shopper,
I want to change item quantities in my cart,
So that I can adjust my order before checkout.

Story Points: 3
Priority: P0
```

**Story 4: Remove Item**
```
As a shopper,
I want to remove items from my cart,
So that I can buy only what I need.

Story Points: 2
Priority: P0
```

**Story 5: Save Cart for Later**
```
As a logged-in shopper,
I want my cart to persist across sessions,
So that I don't lose my selections.

Story Points: 5
Priority: P1
```

---

## 9. Best Practices

### Writing User Stories
✅ **Do:**
- Focus on user value, not technical implementation
- Keep stories independent when possible
- Use clear, simple language
- Include specific acceptance criteria
- Make stories testable

❌ **Don't:**
- Write technical tasks as user stories
- Make stories dependent on each other when avoidable
- Use vague acceptance criteria ("works well")
- Combine multiple features in one story

### Story Sizing
✅ **Do:**
- Break down stories larger than 8 points
- Use relative estimation (compare to reference stories)
- Include all work (dev, testing, review)
- Re-estimate when you learn new information

❌ **Don't:**
- Estimate in hours for user stories
- Compare across different teams
- Change point values after commitment
- Pressure team to reduce estimates

### Managing Dependencies
✅ **Do:**
- Identify dependencies early
- Communicate with dependent teams
- Track dependencies in your tool
- Have contingency plans

❌ **Don't:**
- Hide dependencies from stakeholders
- Assume dependencies will be ready on time
- Create unnecessary dependencies

---

## 10. Tools and Templates

### Jira Story Format
```
Summary: [One-line description]
Description: [As a/I want/So that]
Acceptance Criteria: [Given/When/Then scenarios]
Story Points: [Number]
Labels: [frontend, backend, etc.]
Components: [Authentication, Cart, etc.]
Sprint: [Sprint name]
```

### Trello Card Format
```
Card Title: [Story name]
Description: User story + acceptance criteria
Checklist: Tasks
Labels: Priority, Story points
Attachments: Designs, specs
```

### GitHub Issue Format
```markdown
## User Story
As a [user type]
I want [action]
So that [benefit]

## Acceptance Criteria
- [ ] Criterion 1
- [ ] Criterion 2

## Tasks
- [ ] Task 1
- [ ] Task 2

Story Points: 5
Priority: P0
```

---

## Resources

**Books:**
- User Stories Applied (Mike Cohn)
- Agile Estimating and Planning (Mike Cohn)

**Templates:**
- Atlassian Agile Coach: https://www.atlassian.com/agile
- Mountain Goat Software: https://www.mountaingoatsoftware.com/

**Tools:**
- Jira, Azure DevOps, Linear
- Trello, Asana, Monday.com
- GitHub Issues, GitLab Issues
