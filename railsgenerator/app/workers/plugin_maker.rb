class PluginMaker
  include Sidekiq::Worker
  sidekiq_options :retry => false

  def perform(id)
  	project = Application.find(id)
  	name = project.name
    #better run it in pipe and analyze the result !!!
	  cmd = "cd #{Rails.root}/../gems/ && bundle exec rails plugin new #{name} --mountable -f"
  	puts cmd
  	`#{cmd}`
  	puts "*"*100
  	`echo "\ngem '#{name}', path: '#{Rails.root}/../gems/#{name}'" >> Gemfile`
  	id=`cat /tmp/unicorn.my_site.pid`
    puts " This is process id: #{id} "
  	project.status="routing"
  	project.save
    #Run all migrations manually !!
    `rails g migration Create#{name.camelize}Mod name:string`
    `rails g migration Create#{name.camelize}Control name:string`
    `rails g migration Create#{name.camelize}Function name:string control_id:integer`
    `rails g migration Create#{name.camelize}Rout path_name:string path_source:string req_type:string`
    `rake db:migrate`
    puts "Done with migration"


  # `rake railties:install:migrations && rake db:migrate`
	`kill -s USR2 #{id}`
	project.status="complete"
	project.save
	puts "Rebooted"
	#Run the migrations and create all the required tables
	# generate_model(name,attributes)
	#Make static pages controller and an index.html page
	# generate_controler(name,"static")
	# `cd #{Rails.root}/../gems/#{name}' && rails g controller Static home`
  end

  def generate_controler(name,controller_name)
  	`cd #{Rails.root}/../gems/#{name}' && rails g controller #{controller_name} home`
  end

  def generate_model(name,attributes)# attributes willl be the hash of key value pair
  	content = ""
  	for key,value in attributes do
  		content += " #{name}:#{attributes}"
  	end
  	#Check if that model Already exists or not
  	if (Object.const_get(name).const_get(controller_name) rescue false )== false
	  	`cd #{Rails.root}/../gems/#{name}' && rails g model #{name} #{content}`
  		puts "Created"
  	else
  		false
    end
  	# defined?(Object.const_get("Finally").const_get('Something'))
  	# defined?(Object.const_get(app_name)::Object.const_get(name))
  	#Created a model!!!
  end

  # def generate_routes()




end
