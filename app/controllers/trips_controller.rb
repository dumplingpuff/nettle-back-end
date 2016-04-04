class TripsController < ProtectedController
  before_filter :find_trip, only: [:show, :update, :destroy]
  before_filter :trip_params, only: [:create, :update]
  skip_before_action :authenticate, only: [:index, :show, :patch]

  def index
    render json: Trip.all
  end

  def show
    render json: @trip
  end

  def create
    @trip = Trip.new(trip_params)
    @user = current_user
    # @trip.users.new()
    @user.trips.new(trip_params)

    if @trip.save && @user.save
      render json: @trip, status: :created
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  def adduser
    @trip = Trip.find(params[:trip_id])
    @user = User.find(params[:user_id])
    @user.trips = @trip
    @trip.users = @user
  end

  def update
    if @trip.update(trip_params)
      render json: @trip, status: :ok
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @trip.destroy
    head :no_content
  end

  private
  def find_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit!
  end

  def get_user
    User.find_by token: request.headers["HTTP_AUTHORIZATION"].split('=')[-1]
  end
end
