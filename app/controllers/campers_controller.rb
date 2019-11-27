class CampersController < ApplicationController
  def index
    @campers = Camper.all
  end

  def new
    @camper = Camper.new
  end

  def create
    w = params.require(:camper).permit(:name, :age)
    c = Camper.create(w)
    if c.errors.empty?
      redirect_to c
    else
      redirect_to new_camper_path
    end
  end

  def show
    @camper = Camper.find(params[:id])
  end

  def activity
    @camper = Camper.find(params[:id])
    @activities = Activity.all
    @signup = Signup.new
  end
end
