class ChatsController < ApplicationController
  def create
    @chat = Chat.new(chat_params)
    @chat.save
    redirect_to project_path(params[:project_id])
  end

  def update
  end

  private
  def chat_params
    params
    .require(:chat)
    .permit(:body, :user_id)
    .merge(project_id: params[:project_id])
  end

end
