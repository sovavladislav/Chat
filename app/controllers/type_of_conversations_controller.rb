class TypeOfConversationsController < ApplicationController
	before_action :if_admin?
	before_action :set_type, only: [:edit, :show, :update, :destroy]

	def index
		@types = TypeOfConversation.all
	end

	def new
		@type_of_conv = TypeOfConversation.new

	end

	def create
		@type_of_conv = TypeOfConversation.new(type_of_conv_params)
		if @type_of_conv.save
			flash[:notice] = 'Вид беседы успешно создан'
			redirect_to type_of_conversations_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
    if @type_of_conv.update(type_of_conv_params)
      flash[:notice] = 'Вид беседы успешно обновлён'
      redirect_to type_of_conversations_path
    else
      render 'edit'
    end
  end

	def show
	end

	private

	def type_of_conv_params
		params.require(:type_of_conversation).permit(:name, :main_role, available_roles: [])
	end

	def set_type
		@type_of_conv = TypeOfConversation.find(params[:id])
	end
end