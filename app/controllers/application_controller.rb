class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protect_from_forgery with: :exception

  def if_admin?
  	unless current_user.is_admin
  		flash[:error] = 'Нет доступа к данной категории'
  		redirect_to root_path
  	end
  end
end
