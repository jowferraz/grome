class Equipment < ActiveRecord::Base
  belongs_to :item
  belongs_to :gear
end
