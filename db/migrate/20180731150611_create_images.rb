class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :product, index: true, foreign_key: true
      t.string :image
      t.integer :category, null: false, default: 0

      t.timestamps
    end
  end
end
