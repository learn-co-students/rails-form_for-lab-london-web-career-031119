class SchoolClassesController < ApplicationController

  def show
    @school_class = get_params(:title, :room_number)
  end

  def index
    @school_classes = SchoolClass.all
    byebug
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new
    byebug
    @school_class.title = get_params(:title)
    @school_class.room_number = get_params(:room_number)
    @school_class.save
    redirect_to school_class_path @school_class
  end

  private

  def get_params(*args)
    params.require(:school_class).permit(*args)[*args]
  end

end
