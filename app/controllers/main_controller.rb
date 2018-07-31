class MainController < ApplicationController

  COMING_SOON = false

  def thanks
  end
  
  def index
    render "coming_soon" if COMING_SOON
  end

 


end