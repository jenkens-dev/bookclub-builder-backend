Rails.application.routes.draw do
  resources :bookclub_users
  namespace :api do
    namespace :v1 do
      resources :users
      resources :books
      resources :bookclubs
      resources :bookclub_users
      post '/login', to: 'auth#login'
      get '/current_user', to: 'auth#current_user'
      get '/:id/bookclubs', to: 'users#mybookclubs'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
