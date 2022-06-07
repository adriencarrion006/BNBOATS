class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @boat = Boat.all
  end
end
