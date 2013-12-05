class Control < ActiveRecord::Base
after_save :generate_code

#Do after save part ot generate the code
    def generate_code
    	controllerName = self.name
        if(Control.find_by_name(controllerName).nil?)
            `rails g controller #{controllerName}`
            Control.create(name: controllerName)
        end
    end




end