class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :itemtp
      t.string :date_cad
      t.text   :alert
      t.string :status
      t.references :user, index: true, foreign_key: true
      t.references :account, index: true, foreign_key: true

      t.timestamps null: false
    end
    Item.create alert: 0
  end
end
