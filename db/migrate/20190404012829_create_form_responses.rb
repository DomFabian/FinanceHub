class CreateFormResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :form_responses do |t|
      t.belongs_to :member
      t.belongs_to :form
      t.belongs_to :batch
      t.timestamps
    end
  end
end
