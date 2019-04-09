class SchoolClassesController < ApplicationController

  def index
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(params_school_class)
    redirect_to @school_class
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end
  
  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params_school_class)

    redirect_to @school_class
  end

  private

  def params_school_class
    params.require(:school_class).permit(:title, :room_number)
  end

end
