class AddAverageToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :average, :float
    add_column :users, :slug, :float
  end
end
