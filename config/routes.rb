Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
   namespace :api do
    namespace :v1 do
      resources :invites
      resources :users
      get '/auth' => 'invites#auth'
    end
  end 
end
