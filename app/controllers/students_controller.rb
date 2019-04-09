class StudentsController < ApplicationController

  def index
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params_students)
    redirect_to @student
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params_students)

    redirect_to @student
  end

  def params_students
    params.require(:student).permit(:first_name, :last_name)
  end

end
