# frozen_string_literal: true

class MessageComponent < ViewComponent::Base
  def initialize(message:)
    @message = message
  end

  def bubble_classes
    if @message.role == 'user'
      "bg-blue-500 text-white rounded-br-sm"
    else
      "bg-[#F2F2F7] text-gray-900 rounded-bl-sm"
    end
  end

  def container_classes
    if @message.role == 'user'
      "justify-end"
    else
      "justify-start"
    end
  end
end
