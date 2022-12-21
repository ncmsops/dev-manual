# Development gates

Development gates work at the repository level, to catch issues early

```mermaid
  graph LR;
      Lint-->Vulnerability-audit
      Vulnerability-audit-->No-duplicates;
      No-duplicates-->Unit-test;
      Unit-test-->Integration-test;
```

## Lint

### Inputs

All inputs to Lint are in the repository itself:

1. Source code and Dependencies (`package.json`)
1. Linting rules

Minimum linting rules:

- [Google JavaScript style guide](https://www.npmjs.com/package/eslint-config-google)
- [ESLint recommended](https://github.com/eslint/eslint/blob/main/conf/eslint-recommended.js)
- Maximum cyclomatic complexity in a function: `3`
- Maximum line length: `100` characters
- Don't require jsdoc

### Output

- Fail on any findings + errors with line-numbers

>Zero linter-findings, no exceptions

## Vulnerability-audit

### Inputs

1. Source code and Dependencies (only production)
1. `npm audit` with [GitHub Advisory Database](https://github.blog/2021-10-07-github-advisory-database-now-powers-npm-audit/)

### Output

- Fail on any Vulnerabilities (Critical, Major, Average, Minor)

>Zero vulnerabilities
>Exception: Temporary till 3rd party release is available, discussed at [Requirement](grooming.md#Requirement) level

## No-duplicates

### Inputs

- Source code and Dependencies

### Output

- Fail on any duplication

>Zero duplicates of >3 lines / 45 tokens within the repository

## Unit-test

### Inputs

- Source code and Dependencies

### Output

- Fail on any unit-test failure

>100% line, branch and function coverage
>Exception: Where the dependency is the functionality (Example: code-lines that push files to S3 bucket). Reviewed at pull-request

## Integration-test

### Inputs

- All service repositories
- Tests to prove functionality and catch regressions

### Output

- List of tests executed successfully
