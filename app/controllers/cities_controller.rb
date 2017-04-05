class CitiesController < ApplicationController
    def index
<<<<<<< HEAD
        render json: City.order(:name).pluck(:id, :name)
    end
end
=======
        @cities =  City.all
    end

    def show
        @city = City.find(params[:id])
    end
end
>>>>>>> release/Cities
