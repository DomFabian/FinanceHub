class CreateCommittees < ActiveRecord::Migration[5.2]
  def change
    create_table :committees do |t|
      t.timestamps
    end
    
    create_table :committees_members do |t|
      t.belongs_to :committee, index: true
      t.belongs_to :member, index: true
    end
  end
end
