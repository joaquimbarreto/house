class SymptomsController < ApplicationController
  # before_action :find_suffer, only: [:show, :edit, :update, :destroy]

    def index
      @symptoms = Symptom.all
    end

    def show
      @symptom = Symptom.find(params[:id])
    end

    # def index
    #   @suffers = Suffer.all
    # end
    #
    # def show
    #
    # end
    #
    # def new
    #   @suffer = Suffer.new
    # end
    #
    # def create
    #   @suffer = Suffer.create(suffer_params)
    #   redirect_to suffer_path(@suffer)
    # end
    #
    # def edit
    #
    # end
    #
    # def update
    #   @suffer.update(suffer_params)
    # end
    #
    # def destroy
    #   @suffer.destroy
    #   redirect_to suffers_path
    # end
    #
    private

    def suffer_params
      params.require(:suffer).permit(:symptom_id, :patient_id)
    end

    def find_suffer
      @suffer = Suffer.find(params[:id])
    end

end
