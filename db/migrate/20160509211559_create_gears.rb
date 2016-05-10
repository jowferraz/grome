class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.string :geartype
      t.string :model
      t.string :name
      t.string :serial
      t.string :color
      t.string :brand
      t.string :details
      t.string :date_buy
      t.string :alert
      t.references :item, index: true, foreign_key: true
      t.references :account, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
