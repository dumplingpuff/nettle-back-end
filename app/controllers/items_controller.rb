class ItemsController < ProtectedController
before_filter :find_item, only: [:show, :update, :destroy]
before_filter :item_params, only: [:create, :update]
# before_filter :get_user, only: [:create, :update]
skip_before_action :authenticate, only: [:index, :show]

def index
  render json: Item.all
end

def show
  render json: @item
end

def create
  @item = Item.new(item_params)
  @user = current_user
  @user.items.new(item_params)
  @trip = Trip.find(params[:tripId])
  @trip.items << @item
  if @user.save && @trip.save
    render json: @item, status: :created
  else
    render json: @item.errors, status: :unprocessable_entity
  end
end

def update
  if @item.update(item_params)
    render json: @item, status: :ok
  else
    render json: @item.errors, status: :unprocessable_entity
  end
end

def destroy
  @item.destroy
  head :no_content
end


private
def find_item
  @item = Item.find(params[:id])
end

def item_params
  params.require(:item).permit!
end

def get_user
  @user = User.find_by token: request.headers["HTTP_AUTHORIZATION"].split('=')[-1]
end

end
