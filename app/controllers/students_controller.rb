class StudentsController < ApplicationController
  def index
    @all = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(class_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(class_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private

	def class_params(*args)
    params.require(:student).permit(*args)
  end
end
