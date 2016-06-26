class WorkersController < ApplicationController
	
	def index
		@workers = Worker.all

	end

	def new
		@worker = Worker.new
	end

	def create
		@worker = Worker.new(worker_params)
		if @worker.save
			flash[:success] = "Worker created successfully"
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
		@worker = Worker.find(params[:id])

	end

	def delete


	end
	private

	def worker_params
		params.require(:worker).permit(:name,:cnic,:phone,:address,:city,:category_id)

	end



end
