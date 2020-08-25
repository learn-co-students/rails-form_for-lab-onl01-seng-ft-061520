class SchoolClassesController < ApplicationController
    def new 
        @school_class = SchoolClass.find(params[:id])
        @school_class = SchoolClass.new
    end

    def show
		@school_class = SchoolClass.find(params[:id])
    end
    
    def create 
        @school_class = SchoolClass.new(school_class_params(:title, :room_number))
        @school_class.save
        redirect_to school_class_path(@school_class)
    end
end
