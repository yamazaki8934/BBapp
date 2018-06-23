class CreateInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :infos do |t|
      t.integer :games
      t.integer :bats
      t.integer :hits
      t.integer :scores
      t.integer :longhits
      t.integer :steals

      t.timestamps
    end
  end
end
