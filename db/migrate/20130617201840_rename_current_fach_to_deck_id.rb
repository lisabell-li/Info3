class RenameCurrentFachToDeckId < ActiveRecord::Migration
  def change
     rename_column :karteikartes, :current_fach, :deck_id
  end
end
