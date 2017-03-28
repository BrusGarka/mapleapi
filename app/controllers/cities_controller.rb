class CitiesController < ApplicationController
    def index
        render json: City.all.pluck(:name)
    end
end
