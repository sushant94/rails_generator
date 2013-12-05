class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user,:app_name


  private
      def current_user
         @user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end
    def app_name
        a = Application.find_by_user_id(current_user.id) unless current_user.nil?
        return a.name unless a.nil?
        return nil
    end





end
