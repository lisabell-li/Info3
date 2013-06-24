class ChangeDeckIdName < ActiveRecord::Migration
  def change
  	rename_column :decks, :deck_id, :decknumber
  end
end
