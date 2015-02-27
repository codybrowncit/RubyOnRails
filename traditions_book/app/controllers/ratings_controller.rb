class RatingsController < ApplicationController
before_action :authenticate_user!
load_and_authorize_resource
def index
		#@ratings = Rating.all
	end

	def new
		#@rating = Rating.new
	end

	def create
		# get data from the form
		
		#give the data to the model
		#@rating = Rating.new(rating_params)
		@rating.user = current_user
		#save the model
		if @rating.save
			# redirect to show or index
			redirect_to ratings_path
		else
			render :new
		end

	end


	def edit
		#@rating = Rating.find(params[:id])
	end

	def update
		#get data from form
		
		#find the existing 
		#@rating = Rating.find(params[:id])
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
	def rating_params
		params.require(:rating).permit(:rating_number, :tradition_id)
	end
	

end
