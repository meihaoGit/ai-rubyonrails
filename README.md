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

## Docker Compose Local Execution Guide

このプロジェクトでは、ローカルのデータベース（PostgreSQL）やKVS（Redis）をDocker Composeで管理しています。以下の手順で操作してください。

### 基本的な実行手順

1. **バックグラウンドで起動**
   ```bash
   docker-compose up -d
   ```
   ※ `-d` オプションによりバックグラウンドで実行されるため、ターミナルが占有されません。

2. **コンテナの起動状態を確認**
   ```bash
   docker-compose ps
   ```
   `db` と `redis` の `State` が `Up` になっていることを確認してください。

3. **データベースの作成・マイグレーション（初回または変更時）**
   ```bash
   bin/rails db:prepare
   ```

4. **Railsサーバーを起動**
   ```bash
   bin/rails s
   ```

### 停止・リセット関連のコマンド

- **コンテナの停止（データは保持）**
  ```bash
  docker-compose stop
  ```

- **コンテナの停止・破棄（データは保持）**
  ```bash
  docker-compose down
  ```

- **【警告】コンテナとデータベースのデータを完全にリセット**
  DBのデータが壊れた場合や、最初から環境を作り直したい場合に実行します（Volumeも削除されます）。
  ```bash
  docker-compose down -v
  ```

- **ログの確認（エラー調査など）**
  ```bash
  docker-compose logs -f
  ```