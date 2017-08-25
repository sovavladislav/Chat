class MessagesController < ApplicationController
	def create
		params[:message][:user_id] = current_user.id
		@message = Message.new(message_params)
		if @message.save
			ActionCable.server.broadcast 'messages',
				message: @message.body,
				user: @message.user.fname
			head :ok
		else
			redirect_to conversations_path
		end
	end

	private

	def message_params
		params.require(:message).permit(:body, :user_id, :conversation_id)
	end
end