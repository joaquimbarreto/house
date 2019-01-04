class PatientsController < ApplicationController
  before_action :find_patient, only: [:show, :edit, :update, :destroy]

  def index
    @patients = Patient.all
  end

  def show

  end

  def new
    @patient = Patient.new
  end

  def create
  @patient = Patient.new(patient_params)
  if @patient.valid?
    @patient.save
    session[:patient_id] = @patient.id
    redirect_to patients_path
  else
    redirect_to signup_path
  end
end

  def edit

  end

  def update
    @patient.update(patient_params)
    redirect_to patient_path(@patient)
  end

  def destroy
    @patient.destroy
    redirect_to patients_path
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :password)
  end

  def find_patient
    @patient = Patient.find(params[:id])
  end

end
