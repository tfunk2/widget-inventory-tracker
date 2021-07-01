class CreatePurchasedItems < ActiveRecord::Migration[6.0]
  def change
    create_table :purchased_items do |t|
      t.references :widget, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
