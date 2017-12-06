class CreateGroupMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :group_members do |t|
      t.integer :group_id
      t.integer :owner_id
      t.integer :friend_id

      t.timestamps

    end
  end
end
