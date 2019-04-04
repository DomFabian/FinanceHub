class RenameFormsTypeColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :forms, :type, :form_type
  end
end
