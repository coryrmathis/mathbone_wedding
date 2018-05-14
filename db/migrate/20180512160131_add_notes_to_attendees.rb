class AddNotesToAttendees < ActiveRecord::Migration[5.1]
  def change
    add_column :attendees, :notes, :text
  end
end
