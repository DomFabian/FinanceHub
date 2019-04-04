class RemoveMembersFromForm < ActiveRecord::Migration[5.2]
  def change
    remove_column :forms, :member_id
  end
end
