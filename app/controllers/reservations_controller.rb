class ReservationsController < ProtectedController
  before_action :set_reservation, only: [:update, :destroy]

  # GET /reservations
  # GET /reservations.json
  def index
    @reservations = Reservation.all.reverse

    render json: @reservations
  end

  def my_reservations
    @reservations = Reservation.where("user_id=#{current_user.id}").reverse
    render json: @reservations
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
    render json: @reservation
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: @reservation, status: :created, location: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reservations/1
  # PATCH/PUT /reservations/1.json
  def update
    @reservation = Reservation.find(params[:id])

    if @reservation.update(reservation_params)
      head :no_content
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation.destroy

    head :no_content
  end

  private

  def set_reservation
    @reservation = current_user.reservations.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:user_id, :week_id)
  end
end
