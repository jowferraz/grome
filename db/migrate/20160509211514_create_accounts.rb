class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :cpf
      t.string :rg
      t.string :street
      t.string :number
      t.string :zipcode
      t.string :country
      t.string :accept_terms
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
