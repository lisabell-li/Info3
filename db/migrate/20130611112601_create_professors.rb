class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :emailAddress
      t.string :loginPassword
      t.integer :currentScore
      t.string :course

      t.timestamps
    end
  end
end
