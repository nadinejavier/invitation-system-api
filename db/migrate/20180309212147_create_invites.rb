class CreateInvites < ActiveRecord::Migration[5.1]
  def change
    create_table :invites do |t|
      t.integer :user_id
      t.string :recipient
      t.string :message
      t.string :status

      t.timestamps
    end
  end
end
