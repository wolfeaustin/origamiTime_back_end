class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.integer :model_id
      t.string :description
      t.string :photo
      t.integer :step_num

      t.timestamps
    end
  end
end
