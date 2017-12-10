class ChatsController < ApplicationController
  def create
    @chat = Chat.new(chat_params)
    @chat.save
    project.shishous << @chat.user unless project.shishous.include?(@chat.user) or project.owner == @chat.user 
    redirect_to project_path(params[:project_id])
  end

  def update
    @chat.update(chat_params)
  end

  private
  def chat_params
    params
    .require(:chat)
    .permit(:body, :user_id)
    .merge(project_id: params[:project_id])
  end

  def project
    @project ||= Project.find(params[:project_id])
  end

end
