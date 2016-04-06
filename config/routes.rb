Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  patch '/trip/:trip_id/user/:user_id' => 'trips#adduser'
  post '/trip-create' => 'trips#create'
  resources :users, only: [:index, :show]
  resources :trips
  resources :items
end
