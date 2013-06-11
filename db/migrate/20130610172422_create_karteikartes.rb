class CreateKarteikartes < ActiveRecord::Migration
  def change
    create_table :karteikartes do |t|
      t.string :vorname
      t.string :nachname
      t.integer :current_fach
      t.integer :prev_fach
      t.boolean :erraten

      t.timestamps
    end
  end
end
