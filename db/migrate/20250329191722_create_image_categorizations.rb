class CreateImageCategorizations < ActiveRecord::Migration[7.2]
  def change
    create_table :image_categorizations, id: false do |t|
      t.references :image, null: false, foreign_key: true
      t.references :image_type, null: false, foreign_key: true

      t.timestamps
    end
    add_index :image_categorizations, [:image_id, :image_type_id], unique: true
  end
end
