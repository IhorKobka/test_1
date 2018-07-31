class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.bigint :parent_id
      t.string :name, limit: 50, null: false
      t.integer :sort_pos, null: false

      t.timestamps
    end
  end
end
