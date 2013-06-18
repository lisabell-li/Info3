class RenameCurrentDecknumberToDeckId < ActiveRecord::Migration
  def change
  	 rename_column :decks, :decknumber, :deck_id
  end
end
