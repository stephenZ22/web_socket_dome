class ChatController < ApplicationController
  def chat
    MessageBus.publish "/channel", params[:text]
    head 200, content_type: "text/html"
  end
end
