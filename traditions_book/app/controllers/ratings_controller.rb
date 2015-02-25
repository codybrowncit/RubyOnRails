class RatingsController < ApplicationController
before_action :authenticate_user!
def index
		@ratings = Rating.all
	end

	def new
		@rating = Rating.new
	end

	def create
		# get data from the form
		rating_params = params.require(:rating).permit(:rating_number, :tradition_id, :user_id)
		#give the data to the model
		@rating = Rating.new(rating_params)
		#save the model
		if @rating.save
			# redirect to show or index
			redirect_to ratings_path
		else
			render :new
		end

	end


	def edit
		@rating = Rating.find(params[:id])
	end

	def update
		#get data from form
		rating_params = params.require(:rating).permit(:rating_number, :tradition_id, :user_id)
		#find the existing 
		@rating = Rating.find(params[:id])
		#update the picture with new params
		@rating.update(rating_params)
		#redirect to show
		if @rating.save
			# redirect to show or index
			redirect_to ratings_path
		else
			render :new
		end
	end
	

end
