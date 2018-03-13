class AddTokenToInvites < ActiveRecord::Migration[5.1]
  def change
    add_column :invites, :token, :string
  end
end
