class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :equipmentype
      t.string :name
      t.string :brand
      t.string :model
      t.string :color
      t.string :serial
      t.string :details
      t.string :alert
      t.string :date_cad
      t.string :date_buy
      t.references :item, index: true, foreign_key: true
      t.references :gear, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
