class Gear < ActiveRecord::Base
belongs_to :item
belongs_to :Account
has many :equipments

mount_uploader :image, ItemsImageUploader 

end
