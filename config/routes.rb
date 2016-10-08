Rails.application.routes.draw do
  resources :reservations, except: [:new, :edit]
  get '/my_reservations' => 'reservations#my_reservations'
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show, :create, :destroy]
end
