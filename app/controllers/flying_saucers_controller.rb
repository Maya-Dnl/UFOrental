class FlyingSaucersController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index]
  before_action :set_flying_saucer, only: [:show]

  def new
    @flying_saucer = FlyingSaucer.new
  end

  def create
    @flying_saucer = FlyingSaucer.new(flying_saucer_params)
    @flying_saucer.user = current_user
    if @flying_saucer.save!
      redirect_to @flying_saucer, notice: 'Flying saucer was successfully created.'
    else
      render :new
    end
  end

  def index
    @flying_saucers = FlyingSaucer.all
  end

  def show
    # we recuperate the flying saucers by their IDs
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_flying_saucer
    @flying_saucer = FlyingSaucer.find(params[:id])
  end

  def flying_saucer_params
    params.require(:flying_saucer).permit(:brand, :description, :capacity, :planet, :price_by_day, :image)
  end
end
