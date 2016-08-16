class Item < ActiveRecord::Base
    belongs_to :Account
    belongs_to :User
    has_one :gear
    has_one :equipment, through: :gear
    
    def has_account
        return account_id.nil? == false
    end
    
    def self.search(search)
  
        if search
          where(["itemtp LIKE ?", "%#{search}%"])
        else
            all
        end
    end
    
end
