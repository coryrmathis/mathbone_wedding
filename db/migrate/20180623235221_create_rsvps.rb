class CreateRsvps < ActiveRecord::Migration[5.1]
  def change
    create_table :rsvps do |t|
      t.string :name, null: false
      t.integer :num_people, null: false
      t.string :email
      t.boolean :float_trip, default: false
      t.string :share_room, default: false
      
      t.timestamps
    end
  end
end
