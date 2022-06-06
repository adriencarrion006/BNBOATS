class RentsController < ApplicationController
  skip_before_action :authenticate_user!, except: [:new, :create]
  def index
    @rents = Rent.all
  end
  def show
    @rent = Rent.find(params[:id])
  end
  def new

  end
  def create
  end
  def update
  end
  def destroy
  end
end
