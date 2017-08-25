class UsersController < ApplicationController
	before_action :if_admin?
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

	def new
		@user = User.new
	end

	def create
    if params[:user][:role] == 'student'
      params[:user][:year_of_st_ed] = (params[:user][:year_of_st_ed]+'-9-1').to_date
    end
		@user = User.new(user_params)
		if @user.save
			flash[:notice] = 'Пользователь успешно создан'
			redirect_to users_path
		else
			render 'new'
		end
	end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:notice] = 'Пользователь успешно обновлён'
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
  end

  private

  def user_params
  	params.require(:user).permit(:email, :password, :password_confirmation, 
  															 :role, :fname, :mname, :lname, :telephone_number,
  															 :is_curator, :is_admin, :year_of_st_ed, :group_id)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
