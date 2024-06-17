---
layout: post
title:  "[Effective Engineer] Execution (Part 2)"
permalink: /effective-engineer-2/
tags: books tech-career productivity
---

A continuation of [[Effective Engineer] Mindset (Part 1)](/effective-engineer), this article of the series focuses on execution techniques that help enforce those mindsets.

## [Chapter 4] Accelerate iteration speed
- The faster you can iterate, the more that you can learn what works and what doesn't.
- Because learning compounds, the sooner you iterate fast, the faster your learning rate is.

### Continuous Deployment
- Help engineers make small, incremental changes rather than large features.
- When making small changes, it helps trace down bugs and enforce fine-grained A/B testing.
- Gated large feature behind a configuration flag.

### Investing in time-saving tools.
- Faster compilation cycle shorten the validation loops when writing code.
- Using REPL (read-eval-print loop) to verify expressions in an interactive programming environment.
- Invest in those tools early on with a potential upfront cost rather than pay the tax every iteration.

### Shorten debugging and validation loop
- Make a minimal, reproducible test case that triggers the bugs with only necessary configs.
- Test and debug with a tight feedback loop.

### Master programming environment
- Get proficient with text editors and IDE (code reformatting, navigating, version control, etc).
- Be expert in at least one high-level language with powerful built-in abstractions (Python over Java, C/C++).
- Get familiar with Linux shell commands.
- Keyboard over mouse.
- Run unit tests that only associated with your changes.

### Unblock non-engineering bottlenecks
- Dependency upon other teams: overcommunicate to align with priorities.
- How to obtain approval from senior leadership: use informal coffee chat/office hour to build relationship over time.
- Review process from PM/legal: plan ahead.
- Some of these are out of engineer's control, so some companies set up the role of TPMs to help cross-team communications.

## [Chapter 5] Measure what you want to improve
Engineers should relentlessly measure and quantify metrics to improve product quality.

### Use metrics to drive progress
- Focus on right things. Metrics confirm that your product changes actually achieve your objectives.
- Help guard against future regressions.
- Drive forward progress. Make sure the thing that you are optimizing is going at the right direction.
- Measure the effectiveness, compare the leverage against other activities, and prioritize accordingly. See [prioritization](/effective-engineer) section.

### Pick the right metrics
- Maximize impact: profit per `x` in economics, etc.
- Actionable: use `rate/percentage` over `gross/total`.
- Responsive yet robust: Updates quickly enough to give feedback over a period of time. Example: `xxx` over the last week is more responsive than over the last month, while more rebust than over the last hour.
- In terms of team management, engineers can also pick some metrics over the other:
1. `Productivity per week` over `Hours per week`: Long working hours decreases productivity, resulting in "undertime".
2. `Outstanding bug fixed` over `Total bug fixed`: Prioritize impactful bugs over trivial bugs.

### Instrument the system
- Metric is top-level strategy; instrumentation is low-level implementation detail.
- More instrumentations provides better visibility of the system.
- Create dashboard to visualize instrumentations over time.

### Internalize common numbers
- Keep the table at hand: [Latency numbers that every engineer should know.](https://gist.github.com/jboner/2841832)
- These back-of-the-envelop calculations can quickly estimate performance metrics of your design.
- Help spot anomalies in data measurements.
- Common useful numbers can benchmark your current design and scope for improvements.

### Prioritize data integrity
- Log the accurate, unbiased data. Wrong data is worse than no data.
- Usually metrics-related code is less robust than feature code.
- Be skeptical about data integrity: Data can get dropped in network traffic, bugs in data collection pipelines or dashboard, etc.

## [Chapter 6] Validate ideas early and often
- Optimize for feedback ASAP helps get *right* things done.
- Resonate with a more recent idea: [build in public](https://publiclab.co/build-in-public).

### Find low-effort ways to validate the work
- Identify the scariest, the riskiest, the most uncertain part of the project, and validate it first.
- Build a MVP/prototype: the version of a product that allows a team to collect *maximum* amount of *validated* learning about customers with the *least* effort.
- The MVP can be creative. Dropbox "fakes" a placeholder button for Google account login and monitors its click-through rate, to validate whether the feature can gain tractions.

### Continuously validate product changes via A/B testing
- A random subset of users see a change, while everyone else doesn't.
- Using variable control, A/B testing validates that any significant change in metrics can be solely attributed to the product change.
- A/B testing turns the black box of of user behavior into understandable, actionable knowledge.

### Beware the one-person team
- Leverage design doc, code reviews, or informal coffee chat to keep other engineers aware of your progress.
- Keep code changes small and incremental.
- Design API interface/protobuf first to surface early issues.
- Solicit buy-in with conversations for large features.

### Build feedback loop for any decision
- Formulate a hypothesis, design an experiment to test it, define metrics, run the experiments, learn from the results.

## [Chapter 7] Improve project estimation skills

### Use accurate estimates to drive project planning
- Keep the deadline constant and deliver what is possible.
- Decompose the project into granular tasks.
- Set a hard deadline for minimal delivery and an internal deadline for stretch goals.
- While one engineer can finish one task, `n` engineers can't deliver `n` tasks with the same efficiency because of communication overhead, new hire ramp-up, etc.
- Once you have an estimate, validate it against historical data.
- Use timeboxing to restrict with open-ended tasks.

### Budget for the unknown
- There are always uncertain problems that we fail to account for when estimating. Several minor yet unexpected tasks compound and wreak havoc with the schedule.
- Separate effective work time from total calendar time, as many non-engineering duties may slip in. When setting schedules, build in buffer time for the unexpected interruptions.
- `1 engineering day = 2 calendar days` is a ballpark benchmark.

### Define specific goals and measurable milestones
- A well-defined goal helps scope the project: separate must-haves from nice-to-haves.
- It also builds clarity and alignment across key stakeholders.
- A concrete milestone keeps the team honest and tracks current progress. Rather than `almost done`, a measurable milestone looks like `features X, Y, Z by a completion date`.

### Reduce risks early
- A common risk is system integration, where functional subsystems are integrated together but fails as a whole.
- Build an end-to-end scaffolding (skeleton) and test it early on.

### Don't sprint in the middle of marathon
#### Working overtime doesn't produce linear impact
- Productivity decreases with additional hours worked
- When you realize you can't make the deadline, you are more behind schedule than you think, because you likely underestimated the entire projects, not just the previous months.
- Working extra hours can burn out team members and hurt team morale.

#### Working overtime can be used as a compromised option, if you:
- Communicate with the team on why working overtime is necessary.
- Revise the plan and schedule to adapt to the new reality.
- By any means, it's not an excuse for not practicing project estimation skills.

Continue reading the next section: [[Effective Engineer] Long-term Value (Part 3)](/effective-engineer-3)
