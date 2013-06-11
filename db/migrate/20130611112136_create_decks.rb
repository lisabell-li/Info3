class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.integer :cycleTime
      t.integer :decknumber

      t.timestamps
    end
  end
end
