class GroupsController < ApplicationController
	before_action :if_admin?
	before_action :set_group, only: [:show, :edit, :update, :destroy]

	def index
		@groups = Group.all
	end

	def new
		@group = Group.new
	end

	def create
		@group = Group.new(group_params)
		if @group.save
			flash[:notice] = 'Группа успешно создана'
			redirect_to groups_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
    if @group.update(group_params)
      flash[:notice] = 'Группа успешно обновлена'
      redirect_to groups_path
    else
      render 'edit'
    end
  end

	def show
	end

	def destroy
	end

	private

	def group_params
		params.require(:group).permit(:name, :curator_id)
	end

	def set_group
		@group = Group.find(params[:id])
	end
end