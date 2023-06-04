class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome] 
  skip_before_action :verify_authenticity_token, only: [:create, :welcome]
  def new
    # Renderiza el formulario de inicio de sesión
  end

  def create
    @user = User.find_by(nombre: params[:nombre])
    if @user #&& @user.authenticate(params[:pass])
      # Inicia sesión y redirige a la página deseada
      session[:user_id] = @user.id
      redirect_to home_path
    else
      flash.now[:error] = 'Usuario o contraseña invalidas'
      redirect_to login_path
    end
  end

  def destroy
    # Cierra la sesión y redirige a la página de inicio
    session[:user_id] = nil
    redirect_to root_path
  end
end
