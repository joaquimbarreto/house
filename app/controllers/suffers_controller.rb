class SuffersController < ApplicationController
  skip_before_action :verify_authenticity_token
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
    # 2 ways. first is to have an array in the suffer model. symptom_ids []
    # or you create many suffers (treat it as a joinclass)

    # add_column :suffer, :symptom_ids, array: true, default: []
    #suffer_params[:sympton_id]
    @suffer = Suffer.create(suffer_params)
    redirect_to patient_path(@suffer.patient)
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
    p= params.require(:suffer).permit(:patient_id, symptom_ids: [])
   p[:symptom_ids] = p[:symptom_ids].reject(&:blank?)
   p
  end

  def find_suffer
    @suffer = Suffer.find(params[:id])
  end

end
