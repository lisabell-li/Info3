class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :description
      t.string :file
      t.string :name
      t.string :attachment

      t.timestamps
    end
  end
end
