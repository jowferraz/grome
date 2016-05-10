class Item < ActiveRecord::Base
    belongs_to :Account
    belongs_to :User
    has_one :gear
    has_many :equipments, through: :gear
end
