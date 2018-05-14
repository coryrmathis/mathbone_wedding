class AddRsvpToAttendees < ActiveRecord::Migration[5.1]
  def change
    add_column :attendees, :rsvp, :string
  end
end
