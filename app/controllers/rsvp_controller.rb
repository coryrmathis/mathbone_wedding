class RSVPController < ApplicationController

  def new
  end

  def create
    flash[:notice] = "Thank for the RSVP!"
    # redirect_to root_path
    render json: params
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(
      :name,
      :num,
      :share_room,
      :float_trip
    )
  end


end
