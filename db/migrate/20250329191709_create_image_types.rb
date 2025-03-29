class CreateImageTypes < ActiveRecord::Migration[7.2]
  def change
    create_table :image_types do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
    add_index :image_types, :name, unique: true
  end
end
