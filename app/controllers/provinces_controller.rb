class ProvincesController < ApplicationController
    def index
        render json: Province.order(:name).pluck(:id, :name)
    end
end
