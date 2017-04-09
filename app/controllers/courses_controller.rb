class CoursesController < ApplicationController

    def index
        @courses =  Course.group(:category).pluck(:category)#Course.all.order(:name)
    end

    def show
        @course = Course.find(params[:id])
    end

    def create
        @course  = Course.create!(course_params)
    end

    def update
        @course  = Course.update!(course_params)
    end

    private
        def course_params
            params.permit(:name, :school, :semesters,  :price,  :degree, :category, :city_id)
        end
end