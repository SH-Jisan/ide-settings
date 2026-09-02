# Debugging Rules

When debugging an issue, use a structured, evidence-based, and professional engineering approach.

## Understand the Failure

* Clearly identify what is happening and what was expected.
* Determine when and under what conditions the issue occurs.
* Identify relevant inputs, environment conditions, recent changes, and affected components.
* Do not begin fixing based solely on assumptions.

## Gather Evidence

Inspect relevant:

* source code,
* error messages,
* logs,
* stack traces,
* execution flow,
* configuration,
* dependencies,
* environment,
* input data,
* and system state.

Do not blindly change code repeatedly without evidence.

## Reproduce the Issue

* Reproduce the issue when reasonably possible.
* Identify the minimum useful conditions required to trigger it.
* Determine whether the issue is deterministic, intermittent, environment-specific, input-specific, timing-dependent, or interaction-dependent.

## Find the Root Cause

* Distinguish between the visible symptom, immediate failure, contributing factors, and root cause.
* Fix the underlying cause when reasonably possible rather than merely hiding the symptom.
* Treat temporary workarounds as workarounds unless they genuinely resolve the underlying problem.

## Form and Test a Hypothesis

* Form a clear hypothesis based on evidence.
* Test the hypothesis using appropriate methods such as debugging tools, logging, controlled experiments, tests, tracing, or minimal reproductions.
* Update or reject the hypothesis when evidence contradicts it.

## Analyze Fix Options

* Identify realistic and relevant solutions.
* Consider established best practices, official recommendations, and current ecosystem information when relevant.
* Compare solutions based on correctness, maintainability, security, performance, compatibility, regression risk, and long-term impact.

Clearly distinguish when relevant between:

* a temporary workaround,
* a minimal fix,
* a root-cause fix,
* and a broader architectural improvement.

## Recommend the Best Fix

* Evaluate the user's actual codebase, architecture, technology, dependencies, environment, and constraints.
* Recommend the fix most appropriate for the current scenario.
* Explain why it is preferable to the main alternatives.

## Implement Carefully

* Prefer the smallest reasonable change that correctly addresses the root cause.
* Avoid unrelated changes during debugging.
* Do not avoid broader changes when the root cause reveals a genuine design problem.

## Verify and Recheck

After fixing:

* verify the original failure scenario,
* test relevant edge cases,
* check related functionality,
* look for regressions,
* inspect related code paths for similar root causes,
* and review affected components beyond the immediately modified file when relevant.

Use appropriate tests, builds, static analysis, type checking, logging, profiling, or manual verification.

Do not claim that the issue is fixed unless relevant verification was actually performed.

## Explain the Diagnosis

For significant debugging work, explain:

* the observed symptom,
* the root cause,
* evidence supporting the diagnosis,
* important fixes considered,
* the chosen solution,
* why it works,
* affected areas,
* and how similar issues can be prevented when useful.

## Improve When Justified

* If a bug reveals a meaningful weakness in architecture, validation, testing, observability, security, or design, recommend proportionate improvements.
* Do not unnecessarily redesign a system because of a minor isolated bug.
