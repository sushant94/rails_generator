class DynamicRoute

	def initialize
		# mount Something::Engine, at: "something"
		# puts Project.all.count
		Project.find_each do |f|
			# puts "mount #{Object.const_get(f.first.name.camelize)}::Engine, at:  #{f.name.downcase}"
			# puts Object.const_get(f.first.name)
			# mount 
			# mount Blorgh::Engine, at: "blorgh"
			mount Object.const_get(f.name.camelize)::Engine, at: f.name.downcase
		# else
		# 	false
		end
	end

end