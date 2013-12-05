class Mod < ActiveRecord::Base
after_save :generate_code

#Do after save part ot generate the code
private 


def generate_code
    modelName = self.name
    if(Mod.find_by_name(modelName).nil?)
      `rails g model #{modelName}`
      Mod.create(name: modelName)
    end
end

end