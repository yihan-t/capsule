class CreateSentCapsules < ActiveRecord::Migration[5.0]
  def change
    create_table :sent_capsules do |t|
      t.integer :capsule_id
      t.string :recipient_type
      t.integer :ind_recipient_id
      t.integer :group_recipient_id

      t.timestamps

    end
  end
end
