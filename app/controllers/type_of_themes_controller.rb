class TypeOfThemesController < ApplicationController
	before_action :if_admin?
	before_action :set_type, only: [:edit, :show, :update, :destroy]

	def index
		@types = TypeOfTheme.all
	end

	def new
		@type = TypeOfTheme.new

	end

	def create
		@type = TypeOfTheme.new(type_params)
		if @type.save
			flash[:notice] = 'Тип темы успешно создан'
			redirect_to type_of_themes_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
    if @type.update(type_params)
      flash[:notice] = 'Тип темы успешно обновлён'
      redirect_to type_of_themes_path
    else
      render 'edit'
    end
  end

	def show
	end

	private

	def type_params
		params.require(:type_of_theme).permit(:name, :code)
	end

	def set_type
		@type = TypeOfTheme.find(params[:id])
	end
end