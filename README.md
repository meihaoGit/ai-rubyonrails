# AI Ruby on Rails

This project is a Spec-Kit compliant Ruby on Rails application environment designed to streamline onboarding for new developers.

## Tech Stack

- Ruby 3.x
- Ruby on Rails 7.x
- Database: PostgreSQL (via Docker Compose)
- Authentication: Devise
- Admin: ActiveAdmin
- Lint/Format: RuboCop, Prettier
- Test: RSpec, FactoryBot

## Setup

Follow these steps to set up the environment locally.

1. Install prerequisites:
   - Docker and Docker Compose
   - Ruby 3.x
   - Node.js & Yarn (for Prettier)

2. Clone this repository:
   ```bash
   git clone <repository_url>
   cd ai-rubyonrails
   ```

3. Run the setup script:
   ```bash
   bin/setup
   ```

4. Start the application along with Docker services:
   ```bash
   docker-compose up -d
   bin/rails server
   ```

## Usage

- Access the application at `http://localhost:3000`
- Access the ActiveAdmin panel at `http://localhost:3000/admin`

## Testing

Run the test suite using RSpec:

```bash
bundle exec rspec
```

## Linting and Formatting

To verify code quality, run the following commands:

```bash
# Run Ruby linting and formatting
bundle exec rubocop

# Run Front-end formatting
npx prettier --check .
```

## Deployment

Deploy using your preferred CI/CD pipeline. The project is already configured with GitHub Actions to run RSpec, Prettier, and RuboCop upon pushing or creating pull requests to the main branch.

## GitHub
git remote add origin git@github-meihao:meihaoGit/ai-rubyonrails.git
git push -u origin main
