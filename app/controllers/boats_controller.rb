class BoatsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index
  def index
    @boats = Boat.all
  end
  def show
    @boat = Boat.find(params[:id])
  end
  def new
    @boat = Boat.new
  end
  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to boats_path(@boat)
    else
      render :new
    end
  end
  def update
    if @boat.update(boat_params)
      redirect_to boats_path(@boat)
    else
      render :edit
    end
  end
  def destroy
    if @boat.destroy
      redirect_to boats_path(@boat)
    else
      render :index
    end
  end
  private

  def boat_params
    params[:boat].permit(:description, :picture, :boat_model, :licence, :person_number, :price, :localisation)
  end
end
