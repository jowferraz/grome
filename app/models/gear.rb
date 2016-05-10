class Gear < ActiveRecord::Base
  belongs_to :item
  belongs_to :account
  has_many :equipments
end
