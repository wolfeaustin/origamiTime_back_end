class CreateCompletedModels < ActiveRecord::Migration[5.2]
  def change
    create_table :completed_models do |t|
      t.integer :model_id
      t.integer :user_id

      t.timestamps
    end
  end
end
