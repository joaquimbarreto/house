class SessionController < ApplicationController
  def new
  end

  def create
    patient = User.find_by(name: params[:name])
    if patient && patient.authenticate(params[:password])
      session[:user_id] = patient.id
      redirect_to welcome_index_path
    else
      flash[:errors] = ["invalid username or password"]
      redirect_to login_path
    end
  end

  def destroy
    session[:patient_id] = nil
    redirect_to login_path
  end
end
