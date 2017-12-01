class CreateSkillSets < ActiveRecord::Migration[5.1]
  def change
    create_table :skill_sets do |t|
      t.integer :skill_id
      t.integer :user_id
      t.integer :level
      
      t.timestamps
    end
  end
end
