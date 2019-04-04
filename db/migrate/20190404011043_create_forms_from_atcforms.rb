class CreateFormsFromAtcforms < ActiveRecord::Migration[5.2]
  def change
    rename_table :atc_forms, :forms
  end
end
