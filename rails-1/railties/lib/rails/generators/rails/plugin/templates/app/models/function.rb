class Function < ActiveRecord::Base

after_save :generate_code

private

	def generate_code
		contr_name = Control.find(self.control_id).name
		method = self.name 
        f = File.open("../gems/app/controllers/#{contr_name}_controller.rb","a")
        x = f.read
        y = x.split("end")
        y[y.size-1] = y[y.size-1] + "\n" + "def #{method}\nend"
        y = y.join
        f.close
        f = File.open("../gems/app/controllers/#{contr_name}_controller.rb","w+")
        f.write(y)
        f.close
	end
end