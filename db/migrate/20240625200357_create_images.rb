class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.integer :item_id
      t.string :address

      t.timestamps
    end
  end
end
