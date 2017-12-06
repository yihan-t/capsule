class CreateCapsules < ActiveRecord::Migration[5.1]
  def change
    create_table :capsules do |t|
      t.string :name
      t.string :category
      t.string :media
      t.string :emotion
      t.string :description
      t.integer :owner_id

      t.timestamps
    end
  end
end
