class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]

  def new
    @booking = Booking.new
    @flying_saucer = FlyingSaucer.find(params[:flying_saucer_id])
    # @booking.flying_saucer_id = @flying_saucer.id
  end

  def create
    @flying_saucer = FlyingSaucer.find(params[:flying_saucer_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.flying_saucer = @flying_saucer
    if @booking.save!
      redirect_to flying_saucer_bookings_path(@flying_saucer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @bookings = Booking.all
  end

  def show
    # We recuperate our bookings with their IDs
  end

  def edit
  end

  def update
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_booking, :end_booking, :booking_status, :total_price)
  end
end
