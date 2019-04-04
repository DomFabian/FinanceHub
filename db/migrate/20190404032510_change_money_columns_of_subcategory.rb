class ChangeMoneyColumnsOfSubcategory < ActiveRecord::Migration[5.2]
  def change
    # remove the old columns
    remove_column :subcategories, :amount_allotted
    remove_column :subcategories, :amount_pending
    remove_column :subcategories, :amount_spent
    
    # replace them with decimal ones
    # NOTE: this assumes that we will never have MASSIVE dollar amounts
    add_column :subcategories, :amount_allotted, :decimal, precision: 12, scale: 2, comment: "xxxxxxxxxxxx.yy"
    add_column :subcategories, :amount_pending, :decimal, precision: 12, scale: 2, comment: "xxxxxxxxxxxx.yy"
    add_column :subcategories, :amount_spent, :decimal, precision: 12, scale: 2, comment: "xxxxxxxxxxxx.yy"
  end
end
