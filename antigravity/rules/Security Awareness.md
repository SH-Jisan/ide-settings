# Security Awareness

Apply security-conscious engineering practices proportionally to the system, technology, data, and threat exposure.

## Security by Design

* Consider realistic security risks during design and implementation.
* Prefer secure defaults where appropriate.
* Minimize unnecessary attack surface.
* Apply defense in depth when multiple security layers provide meaningful protection.
* Do not add security complexity that provides little practical value.

## Treat External Input as Untrusted

* Treat user input and data crossing untrusted boundaries as potentially invalid or malicious.
* Validate relevant types, formats, ranges, structures, and business rules.
* Sanitize, encode, normalize, or safely process data according to its context.
* Validate at appropriate trust boundaries.
* Do not rely solely on client-side validation when trusted server-side validation is required.

## Protect Secrets and Sensitive Data

Do not unnecessarily expose:

* passwords,

* API keys,

* tokens,

* private keys,

* credentials,

* session secrets,

* or other sensitive information.

* Avoid hardcoding secrets in source code.

* Use appropriate secret-management mechanisms for the environment.

* Prevent sensitive data from appearing unnecessarily in logs, error messages, client-side code, debugging output, documentation, or API responses.

* Ensure sensitive local files are appropriately excluded from version control.

## Authentication and Authorization

When relevant:

* Distinguish authentication from authorization.
* Verify identity appropriately.
* Enforce authorization at trusted boundaries.
* Apply least privilege.
* Do not trust user-controlled roles, permissions, identifiers, or access decisions without server-side verification.
* Check that alternative endpoints or code paths cannot bypass access control.

## Use Secure Practices

* Follow security practices appropriate to the language, framework, operating system, and application type.
* Avoid insecure or deprecated cryptographic, authentication, storage, communication, and input-handling practices.
* Prefer established security mechanisms and trusted libraries over implementing complex security functionality from scratch without strong justification.

## Consider Relevant Vulnerabilities

Consider vulnerabilities realistically relevant to the system, such as:

* injection,
* broken access control,
* authentication failures,
* insecure session handling,
* sensitive data exposure,
* insecure file handling,
* path traversal,
* command injection,
* insecure deserialization,
* memory-safety issues,
* race conditions,
* insecure network communication,
* misconfiguration,
* dependency vulnerabilities,
* and denial-of-service risks.

Do not mechanically apply every security checklist to every task.

## Data and Communication Security

When relevant:

* protect sensitive data in transit and at rest,
* use secure communication mechanisms,
* verify authenticity and integrity where required,
* and avoid unnecessary collection or retention of sensitive data.

## Dependency Awareness

Before relying on security-sensitive dependencies, consider:

* maintenance status,
* reputation,
* known vulnerabilities,
* compatibility,
* update activity,
* and long-term suitability.

Avoid unnecessary dependencies that increase attack surface or supply-chain risk.

## Security Review

When reviewing security-sensitive code:

* identify realistic risks,
* explain the vulnerability,
* describe likely impact and attack conditions,
* identify affected components,
* and recommend proportionate mitigation.

Prioritize issues based on realistic severity and likelihood.

## Safe Error Handling

* Do not expose unnecessary internal details, credentials, stack traces, filesystem information, or sensitive implementation details to untrusted users.
* Maintain useful internal diagnostics without unnecessarily leaking sensitive data.

## Security Verification

For security-relevant changes, use appropriate verification when available, such as:

* security-focused code review,
* input validation testing,
* authentication or authorization testing,
* dependency review,
* configuration review,
* static analysis,
* dynamic testing,
* threat modeling,
* or fuzzing.

Do not claim that a system is completely secure, hack-proof, or vulnerability-free.

## Responsible Security Boundaries

* Clearly distinguish defensive, educational, authorized testing, research, and administration from potentially harmful or unauthorized actions.
* Maintain professional and ethical boundaries.
* Prefer defensive explanations, mitigation, detection, secure implementation, and authorized testing.

## Core Principle

Identify relevant assets and trust boundaries → understand realistic threats → reduce attack surface → apply secure defaults → protect and validate → verify → improve.

Aim for reasonable resilience against realistic threats while balancing security with usability, performance, maintainability, cost, and project requirements.
