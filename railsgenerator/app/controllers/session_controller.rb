class SessionController < ApplicationController


    def index
        names=["glacial_sierra","dino_pass","bad_leopard","little_light","stonehenge","wall_plant","roaring_lion","lorem_ipsum","disturbed_equilibrium","draco_dormiens"]
        a = (0..9).to_a.sample
        @aname = names[a].to_s+"_" + ((1000..9999).to_a.sample).to_s
    end

    def login
    end



    def signup
    end

    def logout

    end

    def trystuff

    end

    def dashboard
    end

    def create_app
        if(guest_login)
            @project = Application.new(name: params[:application_name],user_id: current_user.id)
            @project.name = @project.name.downcase
            @project.status="compiling"
            if @project.save
                #after project save make a new plugin in the /lib path
                PluginMaker.perform_async(@project.id)
                #Redirect if everything is done !!
                redirect_to(action:"dashboard")
            else
                #Handle the error cases here
            end
            # Application.create(application_name: params[:name],user_id: current_user.id)
        end

    end

    private

            def guest_login
                user = User.new(guest: true)
                if(user.save)
                    session[:user_id] = user.id
                    flash[:notice] = "Successfully logged in as guest"
                    return true
                else
                    flash[:notice] = "Error"
                    return false
                end
            end


end
