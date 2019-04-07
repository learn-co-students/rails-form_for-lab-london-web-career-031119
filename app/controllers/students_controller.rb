class StudentsController < ApplicationController
  def index
    @students = Student.all
      end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(safe_params)
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(safe_params())

    redirect_to student_path(@student)
  end

  private

  def safe_params
    params.require(:student).permit!
  end
end
