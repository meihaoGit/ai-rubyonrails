Rails.application.routes.draw do
  # 認証済みユーザーのルート
  authenticate :user do
    root "chats#index", as: :authenticated_root
  end

  # 未認証ユーザーのルート（Devise標準のログイン画面へ）
  root "devise/sessions#new"

  resources :chats, only: [:index, :show, :create] do
    resources :messages, only: [:create]
  end
end
