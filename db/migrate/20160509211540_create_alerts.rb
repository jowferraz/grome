class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :date
      t.string :hasDoc
      t.string :status
      t.string :date_update
      t.string :date_cad
      t.references :item, index: true, foreign_key: true
      t.references :account, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
