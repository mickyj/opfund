class FellowshipsController < ApplicationController
  before_action :set_fellowship, only: [:show, :update, :destroy]

  # GET /fellowships
  # GET /fellowships.json
  def index
    @fellowships = Fellowship.all

    render json: @fellowships
  end

  # GET /fellowships/1
  # GET /fellowships/1.json
  def show
    render json: @fellowship
  end

  # POST /fellowships
  # POST /fellowships.json
  def create
    @fellowship = Fellowship.new(fellowship_params)

    if @fellowship.save
      render json: @fellowship, status: :created, location: @fellowship
    else
      render json: @fellowship.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fellowships/1
  # PATCH/PUT /fellowships/1.json
  def update
    @fellowship = Fellowship.find(params[:id])

    if @fellowship.update(fellowship_params)
      head :no_content
    else
      render json: @fellowship.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fellowships/1
  # DELETE /fellowships/1.json
  def destroy
    @fellowship.destroy

    head :no_content
  end

  private

    def set_fellowship
      @fellowship = Fellowship.find(params[:id])
    end

    def fellowship_params
      params.require(:fellowship).permit(:title, :fellow_id)
    end
end
