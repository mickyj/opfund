class FellowsController < ApplicationController
  before_action :set_fellow, only: [:show, :update, :destroy]

  # GET /fellows
  # GET /fellows.json
  def index
    @fellows = Fellow.all

    render json: @fellows
  end

  # GET /fellows/1
  # GET /fellows/1.json
  def show
    render json: @fellow
  end

  # POST /fellows
  # POST /fellows.json
  def create
    @fellow = Fellow.new(fellow_params)

    if @fellow.save
      render json: @fellow, status: :created, location: @fellow
    else
      render json: @fellow.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fellows/1
  # PATCH/PUT /fellows/1.json
  def update
    @fellow = Fellow.find(params[:id])

    if @fellow.update(fellow_params)
      head :no_content
    else
      render json: @fellow.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fellows/1
  # DELETE /fellows/1.json
  def destroy
    @fellow.destroy

    head :no_content
  end

  private

    def set_fellow
      @fellow = Fellow.find(params[:id])
    end

    def fellow_params
      params.require(:fellow).permit(:image, :name, :nonprofit, :benefactor, :employer, :metro, :cohort)
    end
end
