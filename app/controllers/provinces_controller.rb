class ProvincesController < ApplicationController
    def index
        @provinces =    Province.order(:name)
    end
end
