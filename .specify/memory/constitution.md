# Project Constitution

This document serves as the fundamental set of rules and guidelines for this Ruby on Rails application. All AI coding agents, developers, and tools must adhere to these non-negotiable principles.

## Core Technologies
- **Language**: Ruby 3.x
- **Framework**: Ruby on Rails 7.x
- **Database**: PostgreSQL (managed via Docker Compose)
- **Frontend Assets**: JavaScript/CSS per standard Rails 7 asset pipeline (importmap / esbuild) + Prettier for formatting.

## Architecture & Design Principles
- **Rails-Way First**: Adhere to standard Rails conventions over configurations (CoC). Use standard MVC unless a complex domain logically requires Form Objects, Service Objects, or ViewComponents.
- **Encapsulation & Reusability**: Ensure code is DRY and highly cohesive. Use design patterns (e.g., Service Objects, Query Objects) when business logic in controllers/models becomes too large.
- **Minimal Impact**: When making changes, keep them as isolated as possible to prevent regressions in unrelated modules.
- **Language Requirements**: Code must be written with English comments and standard conventional naming. All pull request descriptions and user communications must be in Japanese.

## Mandatory Libraries & Patterns
1. **Authentication**: Use `Devise` for user authentication.
2. **Admin Panel**: Use `ActiveAdmin` for the backend dashboard.
3. **Database Constraints**: All models must have standard relationships and validations defined. Use database-level constraints where applicable (e.g., foreign keys, unique indices).

## Testing Standards (Strict Enforcement)
- **Framework**: `RSpec` is the only permissible testing framework. Do not use MiniTest.
- **Test Data**: Use `FactoryBot` for generating test data. Do not use fixtures.
- **Coverage**: Every new feature, model method, and controller action must have corresponding coverage in RSpec.

## Linting & Formatting Standards
- **Ruby**: Use `RuboCop`. Code must pass `bundle exec rubocop` cleanly without warnings. Use autocorrect intelligently.
- **Frontend**: Use `Prettier` for all JavaScript, HTML/ERB (if supported), and CSS files. Run `npx prettier --write .` before committing.

## AI Agent Directives
- **No Over-Engineering**: Ensure code remains simple, understandable, and practical.
- **Determinism**: Do not guess implementation details. Rely on this constitution, project specifications, and explicit technical plans before writing code.
