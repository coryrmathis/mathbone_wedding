class AddNotesToRsvps < ActiveRecord::Migration[5.1]
  def change
    add_column :rsvps, :notes, :text
  end
end
