class CreateAtcForms < ActiveRecord::Migration[5.2]
  def change
    create_table :atc_forms do |t|
      t.belongs_to :member, index: true
      t.timestamps
    end
  end
end
