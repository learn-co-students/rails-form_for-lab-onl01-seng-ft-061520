class SchoolClassesController < ApplicationController
  def index
    @school_class = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find_by(params[:id])
  end

  def update
    @school_class = SchoolClass.find_by(params[:id])
    # @schoolclass.update(title: params[:title], description: params[:description])
    @school_class.update(params.require(:school_class).permit(:title, :room_number))

    redirect_to school_class_path(@school_class)
  end
end
