---
layout: post
title:  "[Effective Engineer] Long-term Value (Part 3)"
permalink: /effective-engineer-3/
tags: books tech-career productivity
---

A continuation of [[Effective Engineer] Execution (Part 2)](/effective-engineer-2), this article of the series summarizes how to build long-term values over time.

## [Chapter 8] Balance quality with pragmatism
The chapter discusses how to make tradeoffs between engineering quality and business reality in a variety of practices.
### Code review
Pros:
- Help identify bugs and design shortcoming early on.
- Hold engineers accountable for any code change.
- Set a positive model of good code by institutionalizing knowledge and conventions.
- Foster shared ownership of code.
- Better quality enables long-term development agility -> faster iteration speed.

Tradeoff:
- It might harm short-term productivity under deadline pressure.
- Only review core functionality logic.
- Enforce automatec lint checking for coding style.

### Abstractions (infrastructure)
Pros:
- Good infra only exposes a simple interface and abstracts away the underlying complexity, which makes developers focus on the core business logic.
- Foster a more scalable, maintenance, and extensible codebase.
- Don't repeat yourself (DRY).

Tradeoff:
- It takes time to build a **generic** abstraction.
- Focus on building abstractions for core functionalities.
- Don't overinvest: don't create infra until you **generalize the problem**.

What makes a good infra?
- Easy to learn and use even without documentations
- Hard to misuse.

### Automated testing
Extensive unit tests + a few integration tests.

Pros:
- Smooth out error spikes after launch and reduce overall error rates by validating quality of new code and safeguarding old code against regression.
- Make big code change confident.
- In case of code break, it's quick to identify who is accountable.
- It's the best documentation of how the original author intended to use the code.

Tradeoff:
- Don't be obsess with 100% test coverage rate.
- Balance it with iteration speed
- Focus on high-leverage tests on core functionalities.

### Repay tech debt
Tech debt: deferred work that's necessary to improve code health and quality.
- Incur tech debt when necessary to adapt to the business reality.
- Repay the debt periodically: set up a dedicated period of time once in a while.
- Focus on core codebase in the finite time.

## [Chapter 9] Minimize operation burden
What is operation burden?
- Keep system up and running (deployment).
- Keep up with trendy technologies like programming language or databases.
- Scale the service to more users.

### Embrace operational simplicity
A complex system:
- introduces cross-functional team communication overheads.
- introduces single point of failure (SPOF).
- is hard to have new hires ramp up.
- is hard to maintain its infra, which might be developed by xfn teams.

Instead, do the simple thing first.
- It's okay to experiment with new technologies/infra, but think twice before productionizing it.
- Most of the time, choose the more reliable and stable option, which has been well tested.
- Don't blindly scale the design to the distributed setting, which might not be necessary.

### Build systems that fail fast
- In case of any issue occurs, fails it immediately and visibly.
- Don't use workaround to delay or propogate failures.
- Crash for the engineers, but handle it gracefully for end users.
- Examples include: validating input arguments early on, bubbling up exceptions returned by an external service, etc.

### Automate mechanical tasks
- Pay an upfront cost to automate tasks rather than patching a manual fix.
- However, it's much harder to automate decision-making (reasoning process) than mechanics (a sequence of actions).
- Prefer automating mechanics and leave decision-making as later manual work.
- The recent progress in LLMs might be a good alternative to automate the decision-making process?

### Make batch processes idempotent
- Make each action/process in the sequence produce the same result, no matter the process runs just once, or mnay times.
- If not processed in a idempotent way, a failed action might leave side effects on subsequence actions.

### Plan and recover from failures quickly
- Many big tech companies periodically run "chaos test", which simulates data center failures to attest the recoverability of their systems.
- "Scripting for success": make an exhaustive plan on each potential scenario rather than trying to prevent failures from happening at the first place.
- The ability to plan and recover from failures can minimize the team's pressure to a controllable level. Otherwise, the team can waste time on panicking and firefighting operational burden.

## [Chapter 10] Invest in team's growth
### Prioritize hiring
- Especially true for startup, because it's very likely the new hire will be on your immediately team.
- Very high-leverage activity: if you spend 2 hours per day for 20 days to secure a strong hire, your 40 hours can produce 2000 hours or more work by the new hire.

#### Design an effective interview process
- Technical screening on candidates.
- A good opportunity to advertise the team mission and culture to candidates.
- Optimize for questions with high signal-to-noise ratio: the question that can reveal useful information about the candidates (*signal*), with little irrelevant data (*noise*).
- Keep the interview pace to maintain a high signal-to-noise ratio: give hints at appropriate timing so that candidates won't be get stuck or sidetracked cluelessly.
- Design questions with multiple layers of difficulty and easy to add or remove layer depending on real-time feedback from candidates.

### Design an onboarding process
- Direct new hires to learning and activities that are more aligned with the team's priorities.
- The candidate's initial impression on the team is critical because **learning compounds.** The sooner they can ramp up, more **exponentially** effective they can be over time, which makes you and the team better in the long run.

#### A few specfic onboarding activities
- Codelab - user guide for abstractions.
- Schedule onboarding talks on engineering practices and key abstractions.
- Set up 1:1 mentorship program.
- Have senior engineers design starter tasks for junior engineers to experience e2e development workflow ASAP.

### Shared ownership of code
If a senior engineer is the sole bottleneck on a module, they will lose the flexibility to work on other more high-leverage features than bug fix and maintenance. For junior engineers, they can use the shared ownership to ramp up quickly on the codebase.

How to establish such shared ownership?
- Code & design review.
- Rotate roles and tasks for all teammates.
- Document everything, including high-level design, code-level comments, and any specific workaround solutions.

### Build collective wisdom via post-mortems
- It's not to assign blame; it's to identify better solutions next time -> scripting for success.
- Make the emotional investment to hold an intellectually honest conversation.
- Keep open-minded and receptive to feedbacks, even they are disturbing.
