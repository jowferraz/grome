class Alert < ActiveRecord::Base
  belongs_to :item
  belongs_to :account
end
