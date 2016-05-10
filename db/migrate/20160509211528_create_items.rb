class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :type
      t.string :date_cad
      t.string :alert
      t.string :status

      t.timestamps null: false
    end
  end
end
