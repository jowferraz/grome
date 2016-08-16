class Search < ActiveRecord::Base
    belongs_to :user
   
    def search_items
        
        items = Item.all
        items = items.where(["itemtp LIKE ?", "%#{itemtp}%"]) if itemtp.present?
        
        if itemtp == "GEAR"
            search_gears
        else
            search_equipments
        end
        
    end
    
    def search_gears
        
        gears = Gear.all
        gears = gears.where(["name LIKE ?", "%#{name}%"]) if name.present?
        gears = gears.where(["brand LIKE ?", "%#{brand}%"]) if brand.present?
        gears = gears.where(["model LIKE ?", "%#{model}%"]) if model.present?
        gears = gears.where(["color LIKE ?", "%#{color}%"]) if color.present?
        gears = gears.where(["details CONTAINS ?", "%#{details}%"]) if details.present?
        
        return gears
        
    end 
    
    def search_equipments
        
        equipments = Equipment.all
        equipments = equipments.where(["name LIKE ?", "%#{name}%"]) if name.present?
        equipments = equipments.where(["brand LIKE ?", "%#{brand}%"]) if brand.present?
        equipments = equipments.where(["model LIKE ?", "%#{model}%"]) if model.present?
        equipments = equipments.where(["color LIKE ?", "%#{color}%"]) if color.present?
        equipments = equipments.where(["details CONTAINS ?", "%#{details}%"]) if details.present?
        
        return equipments    
    end
    
end
