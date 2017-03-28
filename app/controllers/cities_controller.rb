class CitiesController < ApplicationController
    def index
        render json: City.order(:name).pluck(:id, :name)
    end
end
