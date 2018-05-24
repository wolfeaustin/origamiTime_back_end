class CreatePicUploads < ActiveRecord::Migration[5.2]
  def change
    create_table :pic_uploads do |t|
      t.integer :user_id
      t.integer :completed_model_id
      t.string :photo
      t.string :description

      t.timestamps
    end
  end
end
