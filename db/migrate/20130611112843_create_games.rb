class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :course
      t.string :gameMode
      t.integer :currentScore

      t.timestamps
    end
  end
end
