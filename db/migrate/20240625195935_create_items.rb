class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :price
      t.string :size
      t.string :description
      t.string :payment_method
      t.integer :user_id

      t.timestamps
    end
  end
end
