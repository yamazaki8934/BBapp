class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :games, :integer
    add_column :users, :bats, :integer
    add_column :users, :hits, :integer
    add_column :users, :scores, :integer
    add_column :users, :longhits, :integer
    add_column :users, :steals, :integer
  end
end
