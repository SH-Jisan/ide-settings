# Debug Workflow

## Step 1: Understand the Failure

Identify:

* what happened,
* what was expected,
* when it happens,
* how often it happens,
* relevant inputs,
* environment conditions,
* and recent changes.

## Step 2: Gather Evidence

Inspect relevant:

* error messages,
* logs,
* stack traces,
* source code,
* execution flow,
* configuration,
* dependencies,
* environment,
* and system state.

Do not guess without evidence.

## Step 3: Reproduce the Issue

Reproduce the issue when reasonably possible.

Determine whether it is:

* deterministic,
* intermittent,
* environment-specific,
* input-specific,
* timing-dependent,
* or interaction-dependent.

## Step 4: Identify the Root Cause

Distinguish between:

* symptom,
* immediate failure,
* contributing factors,
* and root cause.

Prefer fixing the underlying cause rather than hiding the symptom.

## Step 5: Form and Test a Hypothesis

Create a clear hypothesis based on evidence.

Test it using appropriate debugging methods.

Reject or revise the hypothesis when evidence contradicts it.

## Step 6: Evaluate Fix Options

Consider relevant fixes.

Distinguish when useful between:

* workaround,
* minimal fix,
* root-cause fix,
* and architectural improvement.

Evaluate trade-offs and recommend the most appropriate fix.

## Step 7: Apply the Fix

Make the smallest reasonable change that correctly addresses the problem.

Avoid unrelated changes unless broader changes are genuinely required.

## Step 8: Verify

Verify:

* the original failure,
* relevant edge cases,
* affected functionality,
* regressions,
* and related code paths.

Use appropriate testing or verification tools.

## Step 9: Explain the Result

Summarize:

* the symptom,
* root cause,
* supporting evidence,
* chosen fix,
* why it works,
* affected areas,
* verification performed,
* and prevention recommendations when useful.
