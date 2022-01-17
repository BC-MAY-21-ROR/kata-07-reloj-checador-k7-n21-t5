class HomeController < ApplicationController
  def index
  end

  def login
    @admin = Admin.find_by(user: params[:user])
    if !!@admin && @admin.authenticate(params[:password])
      session[:admin_id] = @admin.id
      redirect_to crud_path
    else
      redirect_to admin_path, notice: 'Wrong user or password'
    end
  end
  
end
