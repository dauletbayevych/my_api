class MystsController < ApplicationController
  before_action :authenticate_request, only: %i[ create update destroy ]
  before_action :set_myst, only: %i[ show update destroy ]

  # GET /mysts
  def index
    @mysts = Myst.all

    render json: @mysts
  end

  # GET /mysts/1
  def show
    render json: @myst
  end

  # POST /mysts
  def create
    @myst = Myst.new(myst_params)

    if @myst.save
      render json: @myst, status: :created, location: @myst
    else
      render json: @myst.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mysts/1
  def update
    if @myst.update(myst_params)
      render json: @myst
    else
      render json: @myst.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mysts/1
  def destroy
    @myst.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myst
      @myst = Myst.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def myst_params
      params.require(:myst).permit(:game, :creature, :age, :character, :quote)
    end
end
