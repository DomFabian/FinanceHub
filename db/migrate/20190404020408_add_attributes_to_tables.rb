class AddAttributesToTables < ActiveRecord::Migration[5.2]
  def change
    # members
    add_column :members, :name, :string, null: false, default: ""
    add_column :members, :auth_level, :integer, default: 0
    
    # committees
    add_column :committees, :name, :string, null: false, default: ""
    
    # fiscal years
    add_column :fiscal_years, :name, :string, null: false, default: ""
    add_column :fiscal_years, :active, :boolean, default: true
    
    # categories
    add_column :categories, :name, :string, null: false, default: ""
    
    # subcategories
    add_column :subcategories, :name, :string, null: false, default: ""
    add_column :subcategories, :amount_allotted, :integer, default: 0
    add_column :subcategories, :amount_pending, :integer, default: 0
    add_column :subcategories, :amount_spent, :integer, default: 0
    
    # forms
    add_column :forms, :type, :string, null: false, default: "ATC"
    add_column :forms, :questions, :text, default: [].to_yaml
    
    # form responses
    add_column :form_responses, :answers, :text, default: [].to_yaml
    add_column :form_responses, :id_number, :string, null: false, default: "1939"
    
    # batches
    add_column :batches, :date, :datetime, default: Time.current
  end
end
