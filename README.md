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
git remote add origin git@github-meihao::meihaoGit/ai-rubyonrails.git
git push -u origin main


① リベースを「ローカル優先」で実行
「ローカルの内容を正解として、リモート（GitHub側）を強制的に上書きしたい」という状況ですね。

そのエラーは、ローカルとリモートで履歴が分かれてしまい（Divergent branches）、Gitが「どちらを優先して統合すべきか判断できない」と言っている状態です。

**「ローカル内容優先」**で進めるための最も確実な方法は以下の通りです。

1. 強制プッシュ（Force Push）
ローカルの状態が完全に正しく、リモートの内容（他の人のコミットや初期化時のREADMEなど）を消しても良い場合は、強制プッシュを行います。

Bash
git push -f origin main
(※ブランチ名が master の場合は main を master に読み替えてください)

2. 安全に「ローカル優先」で統合する場合
「リモートにしかないファイル（GitHub上で作ったREADMEなど）」は残しつつ、中身が競合した場所だけローカルを優先したい場合は、以下の手順を踏みます。

① リベースを「ローカル優先」で実行
Bash
git pull origin main --rebase -X ours