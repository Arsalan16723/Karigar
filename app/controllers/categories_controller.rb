class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			flash[:success] = "Category Created Successfully"
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit


	end

	def update


	end

	def show
		@category = Category.find(params[:id])
		@workers = @category.workers

	end

	def destroy


	end

	private

	def category_params
		params.require(:category).permit(:name)
	end

end
