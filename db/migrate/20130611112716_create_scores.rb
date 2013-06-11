class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :gameMode
      t.string :courseName
      t.integer :score

      t.timestamps
    end
  end
end
