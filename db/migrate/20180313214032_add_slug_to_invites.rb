class AddSlugToInvites < ActiveRecord::Migration[5.1]
  change_table :invites do |t|
    t.string :slug, after: :id
  end 
end
