class AddDefaultGenreidToItem < ActiveRecord::Migration[6.1]
  def change
    change_column :items, :genre_id, :integer, :default => 0
  end
end
