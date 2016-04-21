Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  patch '/trips/:id/invite' => 'trips#adduser'
  # put '/trips/:id/invite' => 'trips#adduser'
  post '/trip-create' => 'trips#create'
  resources :users, only: [:index, :show]
  resources :trips
  resources :items
end
