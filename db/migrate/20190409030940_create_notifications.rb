class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.belongs_to :member, index: true
      t.string :description, null: false, default: ""

      t.timestamps
    end
  end
end
