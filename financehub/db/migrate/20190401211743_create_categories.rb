class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.belongs_to :budget, index: true
      t.timestamps
    end
  end
end
