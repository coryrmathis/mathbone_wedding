class CreateAttendees < ActiveRecord::Migration[5.1]
  def change
    create_table :attendees do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :group

      t.timestamps
    end
  end
end
