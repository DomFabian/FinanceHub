class FixColumnsInJoinTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :form_responses_subcategories, :form_responses_id, :form_response_id
    rename_index :form_responses_subcategories, 'index_form_responses_subcategories_on_form_responses_id',
                                                'index_form_responses_subcategories_on_form_response_id'
  end
end
