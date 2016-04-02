class TripsController < ProtectedController
  before_filter :find_trip, only: [:show, :update, :destroy]
  skip_before_action :authenticate, only: [:index, :show]

  def index
    render json: Trip.all
  end

  def show
    render json: @trip
  end

  def create
    @trip = Trip.new(trip_params)

    if @trip.save
      render json: @trip, status: :created
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  def update
    if @trip.update(trip_params)
      render json: @trip, status: :ok
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @article.destroy
    head :no_content
  end

  private
  def find_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:title, :location, :arrival, :departure, :description)
  end
end
