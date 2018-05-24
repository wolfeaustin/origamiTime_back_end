class CreateModels < ActiveRecord::Migration[5.2]
  def change
    create_table :models do |t|
      t.string :name
      t.string :category
      t.string :difficulty
      t.integer :user_id
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
