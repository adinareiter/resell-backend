class CreateJoins < ActiveRecord::Migration[7.0]
  def change
    create_table :joins do |t|
      t.integer :category_id
      t.integer :item_id

      t.timestamps
    end
  end
end
