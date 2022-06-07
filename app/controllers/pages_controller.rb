class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @boat = boat.first(5)
  end
end
