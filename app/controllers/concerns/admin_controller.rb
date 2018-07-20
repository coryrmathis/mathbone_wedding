class AdminController < ApplicationController

  def rsvps
    @rsvps = RSVP.all
  end
end