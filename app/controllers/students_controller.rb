class StudentsController < ApplicationController
  def show
    @student = get_params(:first_name, :last_name)
    byebug
  end

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.title = get_params(:first_name)
    @student.room_number = get_params(:last_name)
    @student.save
    redirect_to school_class_path @student
  end

  private

  def get_params(*args)
    params.require(:student).permit(*args)
  end

end
