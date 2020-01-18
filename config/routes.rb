Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :books
      resources :bookclubs
      resources :bookclub_users
      resources :polls
      post '/polls/:id/options', to: 'polls#create_option'
      post '/poll_options/:id', to: 'polls#increment_vote'
      post '/login', to: 'auth#login'
      get '/current_user', to: 'auth#current_user'
      get '/:id/bookclubs', to: 'users#mybookclubs'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
