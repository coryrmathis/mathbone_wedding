class RSVPController < ApplicationController

  def new
  end

  def create
    rsvp = RSVP.new(rsvp_params)
    if rsvp.save
      redirect_to "/", notice: "Thanks for the RSVP!"
    else
      errors = rsvp.errors.full_messages.join(" | ")
      redirect_to "/", notice: errors
    end
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(
      :name,
      :num_people,
      :email,
      :share_room,
      :float_trip,
      :regrets,
      :notes
    )
  end


end
