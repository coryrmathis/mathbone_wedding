class AddNotesToGroups < ActiveRecord::Migration[5.1]
  def change
    add_column :groups, :notes, :text
  end
end
