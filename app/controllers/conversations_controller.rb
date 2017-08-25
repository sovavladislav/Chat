class ConversationsController < ApplicationController
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
      flash[:notice] = 'Диалог успешно создан'
      redirect_to conversations_path
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @conversation.update(conversation_params)
      flash[:notice] = 'Диалог успешно обновлён'
      redirect_to conversations_path
    else
      render 'edit'
    end
  end

  def show
    @message = Message.new
  end

  private

  def conversation_params
    params.require(:conversation).permit(:dialogName, :user_id, :theme_id, user_ids: [])
  end

  def set_conversation
    @conversation = Conversation.find(params[:id])
  end
end
