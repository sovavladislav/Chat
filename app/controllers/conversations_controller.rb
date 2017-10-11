class ConversationsController < ApplicationController
  before_action :can_access?, only: [:show]
  before_action :set_conversation, only: [:show, :edit, :update, :destroy]

  def index
    @conversations = Conversation.all
  end

  def new
    @conversation = Conversation.new
  end

  def create
    params[:conversation][:user_id] = current_user.id
    @conversation = Conversation.new(conversation_params)
    if @conversation.save
      flash[:notice] = 'Беседа успешно создана'
      redirect_to conversations_path
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @conversation.update(conversation_params)
      flash[:notice] = 'Беседа успешно обновлена'
      redirect_to conversations_path
    else
      render 'edit'
    end
  end

  def destroy
    @conversation.destroy
    redirect_to conversations_path
  end

  def show
    @message = Message.new
  end

  private

  def conversation_params
    params.require(:conversation).permit(:dialogName, :user_id, :theme_id, user_ids: [])
  end

  def can_access?
    unless current_user.conversations.include?(Conversation.find_by(id:params[:id])) || current_user == Conversation.find(params[:id])&.creator
      flash[:error] = 'Нет доступа к данной беседе'
      redirect_to conversations_path
    end
  end

  def set_conversation
    @conversation = Conversation.find(params[:id])
  end
end
