# Universal Coding Standards

## Code Quality

* Write correct, readable, maintainable, and idiomatic code appropriate for the language, framework, and ecosystem.
* Follow professional and industry-appropriate engineering practices.
* Prefer clarity and simplicity when they satisfy the requirements.
* Avoid unnecessary complexity, premature optimization, overengineering, and unnecessary abstraction.

## Architecture and Structure

* Maintain a clear, logical, and scalable project structure appropriate for the project's size and complexity.
* Use separation of concerns where it improves clarity and maintainability.
* Keep modules, classes, components, and functions focused on clear responsibilities.
* Follow existing project architecture and conventions unless a meaningful improvement is justified.

## Naming

* Use clear, descriptive, and meaningful names for variables, functions, classes, modules, files, and other identifiers.
* Names should communicate purpose and responsibility.
* Avoid vague or misleading names.

## Avoid Unnecessary Duplication

* Apply DRY principles where repeated logic or knowledge creates maintenance risk.
* Reuse code through appropriate functions, modules, components, utilities, or abstractions.
* Do not create complicated abstractions merely to eliminate small amounts of harmless duplication.

## Error Handling

* Handle expected errors, invalid states, and relevant edge cases appropriately.
* Do not silently ignore meaningful errors.
* Ensure error handling does not expose unnecessary sensitive information.
* Consider appropriate recovery or failure behavior where relevant.

## Input and Data Validation

* Validate external or untrusted input at appropriate boundaries.
* Check relevant types, formats, ranges, structures, and business rules.
* Do not rely solely on client-side validation when trusted server-side or system-level validation is required.

## Existing Code Awareness

Before adding, changing, or removing code:

* Inspect related code, dependencies, interfaces, data flow, configuration, and tests when relevant.
* Identify files and components likely to be affected.
* Reconsider the implementation after understanding the surrounding system.
* Prefer focused changes, but make broader changes when they are genuinely necessary.

## Modern and Supported Practices

* Prefer stable, maintained, supported, and appropriate technologies and APIs.
* Avoid deprecated or insecure patterns when reasonable modern alternatives exist.
* Verify current version or compatibility information when it materially affects implementation decisions.

## Dependencies

Before adding a dependency, consider:

* whether existing capabilities can solve the problem reasonably,
* maintenance and community support,
* security,
* performance and system impact,
* compatibility,
* long-term sustainability,
* and project complexity.

Introduce dependencies when they provide meaningful value rather than avoiding them unnecessarily.

## Comments and Documentation

* Write self-explanatory code through good structure and naming.
* Add comments for non-obvious reasoning, decisions, constraints, algorithms, or complex logic.
* Do not add comments that merely repeat obvious code.
* Document important public interfaces or modules according to the conventions of the language and project.

## Security

* Follow secure coding practices appropriate to the technology and domain.
* Avoid exposing secrets or sensitive information.
* Use secure defaults where relevant.
* Reduce realistic attack surfaces and avoid known insecure patterns.

## Performance

* Design code for good performance appropriate to actual requirements.
* Consider time complexity, memory usage, network usage, database efficiency, and resource consumption when relevant.
* Avoid premature optimization.
* Optimize meaningful bottlenecks when evidence or requirements justify it.

## Verification

After significant code changes:

* Review relevant modified and affected code.
* Check for logical errors, integration issues, regressions, security concerns, and relevant performance problems.
* Run appropriate builds, tests, linters, type checks, static analysis, or other verification tools when available.
* Do not claim successful verification unless it was actually performed.

## Version Control

* Maintain an appropriate `.gitignore`.
* Exclude environment-specific files, generated artifacts, secrets, build outputs, and other files that should not be version-controlled.
* Update `.gitignore` when new technologies or generated artifacts require it.
* Do not treat `.gitignore` as protection for secrets that have already been exposed or committed.
