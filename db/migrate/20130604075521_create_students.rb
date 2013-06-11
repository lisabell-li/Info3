class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :vorname
      t.string :nachname
      t.string :foto
      t.timestamps
    end
  end
end
