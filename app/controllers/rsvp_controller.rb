class RSVPController < ApplicationController

  def new
  end

  def create
    rsvp = RSVP.new(rsvp_params)
    if rsvp.save
      render json: rsvp
    else

      render json: "FUCK"
    end
    # if rsvp.save
    #   redirect_to "/thanks", notice: "We've got your RSVP!"
    # else
    #   errors = rsvp.errors.full_messages.join(" | ")
    #   redirect_to "/", notice: errors
    # end
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
