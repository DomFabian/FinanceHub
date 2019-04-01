class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.belongs_to :fiscal_year, index: true
      t.timestamps
    end
  end
end
