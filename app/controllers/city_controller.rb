class CityController < ApplicationController
    def index
        render json: City.all
    end
end
