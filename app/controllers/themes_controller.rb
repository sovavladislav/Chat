class ThemesController < ApplicationController
	before_action :if_admin?
	before_action :set_theme, only: [:show, :edit, :update, :destroy]

	def index
		@themes = Theme.all
	end

	def new
		@theme = Theme.new
	end

	def create
		@theme = Theme.new(theme_params)
		if @group.save
			flash[:notice] = 'Тема успешно создана'
			redirect_to themes_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
    if @theme.update(theme_params)
      flash[:notice] = 'Тема успешно обновлена'
      redirect_to themes_path
    else
      render 'edit'
    end
  end

	def show
	end

	private

	def theme_params
		params.require(:theme).permit(:themeName, :type_id)
	end

	def set_theme
		@theme = Theme.find(params[:id])
	end 


end