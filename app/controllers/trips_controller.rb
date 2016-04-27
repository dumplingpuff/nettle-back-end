class TripsController < ProtectedController
  before_filter :find_trip, only: [:show, :adduser, :update, :destroy]
  before_filter :trip_params, only: [:create, :adduser]
  before_filter :trip_update, only: [:update]
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
    # params[:arrival] = Date.strptime(params[:arrival], '%m/%d/%Y')
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
    @user = User.find(params[:trip][:users][:id])
    if @trip.users << @user
      render json: @trip, status: :created
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  def update
    p "I'm in"
    p @trip
    p @trip[:users]
    p "I'm out"
    if @trip.update(trip_update)
      render json: @trip, status: :ok
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user = current_user
    @user.trips.delete(params[:id])
    @user.reload
    # @invite = Invite.find_by trip_id: params[:id]
    # @invite.delete
    # @trip.delete

    head :no_content
  end

  private
  def find_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit!
  end

  def trip_update
    params.require(:trip).permit(:id, :title, :location, :arrival, :departure, :description)
  end

  def get_user
    User.find_by token: request.headers["HTTP_AUTHORIZATION"].split('=')[-1]
  end
end
