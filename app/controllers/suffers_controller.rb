class SuffersController < ApplicationController
  before_action :find_suffer, only: [:show, :edit, :update, :destroy]

  def index
    @suffers = Suffer.all
  end

  def show

  end

  def new
    @suffer = Suffer.new
  end

  def create
    @suffer = Suffer.create(suffer_params)
    redirect_to suffer_path(@suffer)
    byebug
  end

  def edit

  end

  def update
    @suffer.update(suffer_params)
  end

  def destroy
    @suffer.destroy
    redirect_to suffers_path
  end

  private

  def suffer_params
    params.require(:suffer).permit(:patient_id, symptom_id: [])
  end

  def find_suffer
    @suffer = Suffer.find(params[:id])
  end

end
