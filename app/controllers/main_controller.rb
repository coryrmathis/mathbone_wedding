class MainController < ApplicationController

  COMING_SOON = false

  def index
    render "coming_soon" if COMING_SOON
  end

  def info
  end

  def accomodations
  end

end