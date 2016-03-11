class LoginController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def manager_account_params
    params.require(:account).permit(:admin, :password)
  end
  
  def show

  end

  def index
    @admin = params[:admin]
    @password = params[:password]
  end

  def new
    
  end

  def create
    @login = Login.create!(manager_account_params)
  end

  def edit

  end

  def update

  end

  def destroy

  end

end