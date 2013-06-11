class CreateKarteikartes < ActiveRecord::Migration
  def change
    create_table :karteikartes do |t|
      t.string :vorname
      t.string :nachname
      t.number :current_fach
      t.number :prev_fach
      t.boolean :erraten

      t.timestamps
    end
  end
end
