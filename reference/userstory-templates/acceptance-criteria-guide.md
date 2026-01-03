# Acceptance Criteria Guide

## What are Acceptance Criteria?

Acceptance criteria are conditions that a product must satisfy to be accepted by a user, customer, or other stakeholder. They define the boundaries of a user story and are used to confirm when a story is completed and working as intended.

---

## Why Acceptance Criteria Matter

✅ **Benefits:**
- Provide clear definition of "done"
- Reduce ambiguity and misunderstandings
- Enable effective testing
- Facilitate estimation
- Improve collaboration between PM, Dev, QA
- Prevent scope creep

❌ **Without clear criteria:**
- Features are interpreted differently by team members
- Testing is inconsistent or incomplete
- Stories are never truly "done"
- Rework is common

---

## Formats for Writing Acceptance Criteria

### 1. Scenario-Oriented (Given-When-Then)

**Structure:**
```
Given [precondition/context]
When [action/event]
Then [expected outcome]
And [additional outcome]
```

**Example 1: Login**
```
Given I am on the login page
When I enter valid credentials
Then I am redirected to the dashboard
And I see a welcome message with my name

Given I am on the login page
When I enter an invalid password
Then I see an error message "Invalid credentials"
And I remain on the login page
And the password field is cleared
```

**Example 2: Shopping Cart**
```
Given I have 3 items in my cart
When I click "Remove" on item 2
Then the item is removed from the cart
And the cart count updates to 2
And the total price recalculates
And I see a confirmation message "Item removed"
```

**When to use:**
- Complex user flows
- Multiple scenarios to cover
- Need to test different conditions
- Behavior-Driven Development (BDD)

---

### 2. Checklist Format

**Structure:**
```
- [ ] Criterion 1
- [ ] Criterion 2
- [ ] Criterion 3
```

**Example 1: User Registration**
```
- [ ] User can enter email address
- [ ] User can enter password (min 8 characters)
- [ ] User can confirm password
- [ ] Form validates email format
- [ ] Form validates password match
- [ ] User receives confirmation email
- [ ] User is redirected to onboarding
- [ ] Error messages display for invalid inputs
```

**Example 2: Dashboard Widget**
```
- [ ] Widget displays last 7 days of data
- [ ] Data updates every 5 minutes
- [ ] User can refresh manually
- [ ] Loading state shows during data fetch
- [ ] Error state shows if data fetch fails
- [ ] Widget is responsive (mobile, tablet, desktop)
- [ ] Tooltip shows on hover over data points
```

**When to use:**
- Simple, straightforward features
- Clear pass/fail conditions
- Quick reference needed
- Less complex scenarios

---

### 3. Rule-Oriented Format

**Structure:**
```
Business Rule: [Description]
Criteria:
- Criterion 1
- Criterion 2
```

**Example: Discount Calculation**
```
Business Rule: Apply tiered discounts based on order total

Criteria:
- Orders $0-$49.99: No discount
- Orders $50-$99.99: 10% discount
- Orders $100-$199.99: 15% discount
- Orders $200+: 20% discount
- Discount applies to subtotal before tax
- Discount is calculated after applying promo codes
- Discount is displayed separately in order summary
```

**When to use:**
- Business logic implementation
- Pricing or calculation features
- Compliance requirements
- Policy enforcement

---

## Best Practices

### ✅ Do:

1. **Write from user perspective**
   ```
   ✅ Good: "User sees confirmation message after saving"
   ❌ Bad: "System sends HTTP 200 response"
   ```

2. **Be specific and measurable**
   ```
   ✅ Good: "Page loads in under 2 seconds"
   ❌ Bad: "Page loads quickly"
   ```

3. **Include both positive and negative scenarios**
   ```
   ✅ Include:
   - Happy path (valid inputs)
   - Error cases (invalid inputs)
   - Edge cases (boundary conditions)
   ```

4. **Focus on outcomes, not implementation**
   ```
   ✅ Good: "User can search by product name"
   ❌ Bad: "Implement Elasticsearch for search"
   ```

5. **Make them testable**
   ```
   ✅ Good: "Email sent within 5 minutes of registration"
   ❌ Bad: "Email sent quickly"
   ```

6. **Keep them independent**
   - Each criterion should stand alone
   - Don't reference other stories or criteria

7. **Use consistent language**
   - Establish team conventions
   - Use same terminology throughout

### ❌ Don't:

1. **Don't be vague**
   ```
   ❌ "Feature works well"
   ❌ "User is happy"
   ❌ "System performs adequately"
   ```

2. **Don't include implementation details**
   ```
   ❌ "Use Redux for state management"
   ❌ "Query database using JOIN statements"
   ```

3. **Don't make them too broad**
   ```
   ❌ "All functionality works correctly"
   ❌ "User can use all features"
   ```

4. **Don't write too many**
   - If you have >10 criteria, consider splitting the story
   - Focus on the most important conditions

---

## Coverage Checklist

Ensure acceptance criteria cover:

### Functional Coverage
- [ ] Happy path (successful scenario)
- [ ] Alternative paths (different valid approaches)
- [ ] Error handling (invalid inputs, failures)
- [ ] Edge cases (boundary conditions)
- [ ] Data validation rules
- [ ] Business logic rules

### Non-Functional Coverage
- [ ] Performance requirements
- [ ] Security requirements
- [ ] Accessibility requirements
- [ ] Browser/device compatibility
- [ ] Scalability requirements
- [ ] Usability requirements

### User Experience
- [ ] Visual feedback (loading states, confirmations)
- [ ] Error messages (clear, actionable)
- [ ] Navigation flow
- [ ] Responsive design
- [ ] Keyboard navigation
- [ ] Screen reader support

---

## Examples by Feature Type

### 1. Form Submission

**User Story:**
```
As a user,
I want to submit a contact form,
So that I can get support from the team.
```

**Acceptance Criteria:**
```
Given I am on the contact form
When I fill in all required fields (name, email, message)
And I click "Submit"
Then the form is submitted successfully
And I see a confirmation message "Your message has been sent"
And I receive a confirmation email
And the form is cleared

Given I am on the contact form
When I try to submit without filling required fields
Then I see error messages under each empty required field
And the form does not submit

Given I am on the contact form
When I enter an invalid email format
And I click "Submit"
Then I see an error message "Please enter a valid email"
And the form does not submit

Given I am submitting the form
When submission is in progress
Then I see a loading indicator
And the submit button is disabled
And I cannot edit the form fields
```

---

### 2. Search Functionality

**User Story:**
```
As a user,
I want to search for products,
So that I can quickly find what I need.
```

**Acceptance Criteria:**
```
- [ ] User can enter search query in search box
- [ ] Search is triggered on "Enter" key or clicking search icon
- [ ] Results display within 2 seconds
- [ ] Results are sorted by relevance
- [ ] Results show product image, name, price
- [ ] "No results found" message displays when query matches nothing
- [ ] Search highlights matching keywords in results
- [ ] User can filter results by category, price range
- [ ] User can sort results by price, rating, newest
- [ ] Search works with partial matches
- [ ] Search is case-insensitive
- [ ] Special characters are handled correctly
- [ ] Empty search query shows all products
```

---

### 3. Payment Processing

**User Story:**
```
As a customer,
I want to pay with a credit card,
So that I can complete my purchase.
```

**Acceptance Criteria:**
```
Given I am on the payment page
When I enter valid credit card details
And I click "Pay Now"
Then payment is processed successfully
And I see a confirmation screen with order number
And I receive an email receipt
And my order status is updated to "Paid"

Given I am on the payment page
When I enter an invalid card number
And I click "Pay Now"
Then I see an error message "Invalid card number"
And payment is not processed
And I remain on the payment page

Given I am entering payment details
When the payment gateway is unavailable
Then I see an error message "Payment service temporarily unavailable"
And I am offered the option to try again or contact support

Security Requirements:
- [ ] Card details are encrypted (TLS 1.3)
- [ ] Card details are not stored in our database
- [ ] PCI DSS compliance maintained
- [ ] CVV is never logged or stored
- [ ] Failed payment attempts are rate-limited (max 3 attempts)
```

---

### 4. Data Visualization

**User Story:**
```
As a manager,
I want to see sales data in a chart,
So that I can identify trends quickly.
```

**Acceptance Criteria:**
```
- [ ] Chart displays data for selected time period (7d, 30d, 90d, 1yr)
- [ ] Chart updates when time period is changed
- [ ] Data points are accurate to source data
- [ ] X-axis shows dates/time periods
- [ ] Y-axis shows sales amounts with correct currency
- [ ] Tooltip shows exact values on hover over data points
- [ ] Legend explains all data series
- [ ] Chart is responsive on mobile, tablet, desktop
- [ ] Loading state shows while fetching data
- [ ] Error state shows if data fetch fails with retry option
- [ ] User can export chart as PNG or PDF
- [ ] Chart is accessible (keyboard navigable, screen reader compatible)
- [ ] Colors meet WCAG AA contrast requirements
```

---

### 5. File Upload

**User Story:**
```
As a user,
I want to upload my profile picture,
So that others can recognize me.
```

**Acceptance Criteria:**
```
Given I am on the profile edit page
When I click "Upload Photo"
And I select a valid image file (JPG, PNG, max 5MB)
Then the image is uploaded successfully
And a preview of the image is displayed
And I see a success message "Photo uploaded"

Given I am uploading a photo
When I select a file larger than 5MB
Then I see an error message "File size must be under 5MB"
And the upload is rejected

Given I am uploading a photo
When I select an unsupported file type (e.g., PDF, GIF)
Then I see an error message "Please upload JPG or PNG only"
And the upload is rejected

Given I am uploading a photo
When upload is in progress
Then I see a progress bar showing upload percentage
And I can cancel the upload

Technical Requirements:
- [ ] Images are automatically resized to 400x400px
- [ ] Images are compressed to optimize file size
- [ ] Previous profile picture is replaced
- [ ] Image is stored in cloud storage (S3, GCS)
- [ ] Image URL is saved in user profile
```

---

## Edge Cases to Consider

### Common Edge Cases

1. **Empty States**
   - No data available
   - No search results
   - Empty cart/list

2. **Boundary Values**
   - Minimum/maximum values
   - Zero values
   - Negative numbers (if applicable)

3. **Special Characters**
   - Emojis
   - Accented characters
   - HTML/SQL injection attempts

4. **Network Issues**
   - Slow connection
   - No connection
   - Timeout

5. **Concurrent Users**
   - Multiple users editing same data
   - Race conditions
   - Conflicts

6. **Browser/Device Variations**
   - Different screen sizes
   - Different browsers
   - Old browser versions
   - Mobile vs desktop

---

## Acceptance Criteria Template

```markdown
## User Story
As a [user type],
I want to [action],
So that [benefit].

## Acceptance Criteria

### Happy Path
Given [precondition]
When [action]
Then [expected outcome]
And [additional outcome]

### Error Handling
Given [precondition]
When [error condition]
Then [error handling]
And [system state]

### Edge Cases
Given [unusual condition]
When [action]
Then [expected behavior]

### Non-Functional Requirements
- [ ] Performance: [specific requirement]
- [ ] Security: [specific requirement]
- [ ] Accessibility: [specific requirement]
- [ ] Browser Support: [specific requirement]

### Data Validation
- [ ] [Field]: [validation rule]
- [ ] [Field]: [validation rule]

### User Experience
- [ ] Loading states
- [ ] Error messages
- [ ] Success confirmation
- [ ] Responsive design
```

---

## Review Checklist

Before finalizing acceptance criteria, verify:

- [ ] Criteria are clear and unambiguous
- [ ] Criteria are testable
- [ ] Both positive and negative scenarios covered
- [ ] Edge cases considered
- [ ] Non-functional requirements included
- [ ] Written from user perspective
- [ ] Independent of implementation details
- [ ] Measurable/verifiable
- [ ] Complete (covers all aspects of the story)
- [ ] Reviewed by dev and QA teams

---

## Common Pitfalls

### 1. Too Technical
```
❌ "API returns 200 status code with user object in JSON format"
✅ "User profile information is displayed correctly"
```

### 2. Too Vague
```
❌ "Feature works well"
✅ "User can complete checkout in under 3 clicks"
```

### 3. Mixing Implementation
```
❌ "Use React hooks for state management"
✅ "Form state persists when user navigates away and returns"
```

### 4. Testing Instructions
```
❌ "QA should test with different browsers"
✅ "Feature works correctly in Chrome, Firefox, Safari (latest 2 versions)"
```

### 5. Too Many Criteria
```
❌ 25 acceptance criteria for one story
✅ 5-8 focused criteria (or split into multiple stories)
```

---

## Resources

**Tools:**
- Cucumber (BDD testing framework)
- SpecFlow (.NET BDD)
- Behave (Python BDD)

**Further Reading:**
- "Specification by Example" by Gojko Adzic
- "BDD in Action" by John Ferguson Smart
- "User Story Mapping" by Jeff Patton
