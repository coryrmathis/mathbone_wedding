class AddRegretsToRSVP < ActiveRecord::Migration[5.1]
  def change
    add_column :rsvps, :regrets, :boolean, default: false
  end
end
