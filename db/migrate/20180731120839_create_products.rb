class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, limit: 100, null: false
      t.references :category, index: true, foreign_key: true

      t.timestamps
    end
  end
end
