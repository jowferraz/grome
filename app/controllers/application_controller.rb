class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  
  def need_register
    msg_registro = 'Para realizar essa ação, precisa se cadastar!'
    redirect_to account_new_path, notice: msg_registro if current_user.has_user == false
  end
    
  
end
