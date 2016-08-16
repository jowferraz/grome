class AddImageToGears < ActiveRecord::Migration
  def change
    add_column :gears, :image, :oid
  end
end
