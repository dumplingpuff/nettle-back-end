class TripsController < ProtectedController
  before_filter :find_trip, only: [:show, :adduser, :update, :destroy]
  before_filter :trip_params, only: [:create, :adduser, :update]
  skip_before_action :authenticate, only: [:show]

  def index
    # render json: Trip.all
    @trips = current_user.trips
    render json: @trips
  end

  def show
    render json: @trip
  end

  def create
    @trip = Trip.new(trip_params)
    @user = current_user

    if @trip.save
      @user.trips << @trip
      render json: @trip, status: :created
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  def adduser
    p "I am in "
    p params
    @user = User.find(params[:trip][:users][:id])
    if @trip.users << @user
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
    @invite = Invite.find_by trip_id: params[:id]
    @invite.destroy
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
