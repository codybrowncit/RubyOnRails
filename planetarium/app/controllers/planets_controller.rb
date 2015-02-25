class PlanetsController < ApplicationController
	def index
		@planets = Planet.all
	end

	def new
		@planet = Planet.new
	end

	def create
		# get data from the form
		planet_params = params.require(:planet).permit(:name, :position, :orbital_speed, :mass, :volume)
		#give the data to the model
		@planet = Planet.new(planet_params)
		#save the model
		@planet.save
		# redirect to show or index
		redirect_to @planet
	end

	def show
		@planet = Planet.find(params[:id])
	end

	def edit
		@planet = Planet.find(params[:id])

	end
	def update
		#get data from form
		planet_params = params.require(:planet).permit(:name, :position, :orbital_speed, :mass, :volume)
		#find the existing planet
		@planet = Planet.find(params[:id])
		#update the planet with new params
		@planet.update(planet_params)
		#redirect to show
		redirect_to @planet
	end
end
