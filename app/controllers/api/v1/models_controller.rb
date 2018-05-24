class Api::V1::ModelsController < ApplicationController
  before_action :find_model, only: [:show, :destroy, :update]

  #CRUD Methods
  def index
    @models = Model.all
    render json: @models
  end

  def show
    render json: @model
  end

  def create
    @model = Model.new(model_params)
  end

  def update
    @model.update(model_params)
  end

  def destroy
    @model.destroy
  end





  #Private methods
  private

  def model_params
    params.permit(:name, :category, :difficulty, :user_id, :description, :photo)
  end

  def find_model
    @model = Model.find(params[:id])
  end

end
