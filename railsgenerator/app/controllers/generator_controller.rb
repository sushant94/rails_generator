class GeneratorController < ApplicationController

	def create_project 
		@project = Project.new 
	end

	def make_project
		@project = Project.new(test_params_project)
		@project.name = @project.name.downcase
		@project.status="compiling"
		if @project.save
			#after project save make a new plugin in the /lib path
			Resque.enqueue(PluginMaker, @project.id)
			# make_plugin(@project.name)
			redirect_to root_path
		else
			render 'create_project'
		end
	end

	def create_page
		#create controller 
				
	end


	private 

	def test_params_project
		params.require(:project).permit(:name, :description)
	end

	def make_plugin(name)
		# if system(cmd)
		fork do 
			cmd = "cd #{Rails.root}/../gems/ && rails plugin new #{name} --mountable"
			puts cmd
				`#{cmd}`
				puts "*"*100
				`echo "\ngem '#{name}', path: '#{Rails.root}/../gems/#{name}'" >> Gemfile`
				id=`cat /tmp/unicorn.my_site.pid`
				`kill -s USR2 #{id}`
		end
		# end
	end

end
