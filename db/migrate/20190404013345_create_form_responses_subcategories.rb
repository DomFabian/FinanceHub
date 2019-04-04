class CreateFormResponsesSubcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :form_responses_subcategories do |t|
      t.belongs_to :form_responses, index: true
      t.belongs_to :subcategories, index: true
    end
  end
end
