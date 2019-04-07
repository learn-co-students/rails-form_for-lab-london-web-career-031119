class StudentsController < ApplicationController
  def show
    @student = get_params(:title, :room_number)
    byebug
  end

  def index
    @students = SchoolClass.all
  end

  def new
    @student = SchoolClass.new
  end

  def create
    @student = SchoolClass.new
    @student.title = get_params(:title)
    @student.room_number = get_params(:room_number)
    @student.save
    redirect_to school_class_path @student
  end

  private

  def get_params(*args)
    params.require(:student).permit(*args)
  end

end
