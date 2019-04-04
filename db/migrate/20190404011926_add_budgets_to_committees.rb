class AddBudgetsToCommittees < ActiveRecord::Migration[5.2]
  def change
    add_reference :budgets, :committee, foreign_key: true
  end
end
