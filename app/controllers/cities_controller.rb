class CitiesController < ApplicationController
    def index
        @cities =   City.joins(:province)
                                .order("provinces.name, cities.name")
    end

    def show
        @city = City.find(params[:id])
    end
end
