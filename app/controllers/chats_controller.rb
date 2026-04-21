class ChatsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chat, only: %i[show]

  def index
    # ユーザーのチャット履歴を更新日時順で取得
    @chats = current_user.chats.order(updated_at: :desc)
  end

  def show
    # チャットに紐づくメッセージを作成日時順で取得
    @messages = @chat.messages.order(created_at: :asc)
  end

  def create
    @chat = current_user.chats.create!(title: "New Chat #{Time.current.strftime('%Y%m%d%H%M')}")
    redirect_to chat_path(@chat)
  end

  private

  def set_chat
    @chat = current_user.chats.find(params[:id])
  end
end
