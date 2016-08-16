class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :itemtp
      t.string :serial
      t.string :model
      t.string :name
      t.string :brand
      t.string :color
      t.string :details
      t.references :user, index: true, foreing_key: true 

      t.timestamps null: false
    end
  end
end
