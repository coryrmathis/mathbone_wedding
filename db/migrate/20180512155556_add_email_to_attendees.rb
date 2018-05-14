class AddEmailToAttendees < ActiveRecord::Migration[5.1]
  def change
    add_column :attendees, :email, :string
  end
end
