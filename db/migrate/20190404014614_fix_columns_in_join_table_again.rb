class FixColumnsInJoinTableAgain < ActiveRecord::Migration[5.2]
  def change
    rename_column :form_responses_subcategories, :subcategories_id, :subcategory_id
    rename_index :form_responses_subcategories, 'index_form_responses_subcategories_on_subcategories_id',
                                                'index_form_responses_subcategories_on_subcategory_id'
  end
end
