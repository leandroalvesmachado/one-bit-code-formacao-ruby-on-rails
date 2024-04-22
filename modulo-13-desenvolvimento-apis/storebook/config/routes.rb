Rails.application.routes.draw do
  devise_for :users

  post 'login', to: 'authentication#login'

  namespace :api do
    namespace :v1 do
      resources :books # localhost:3000/api/v1/books
      resources :authors # localhost:3000/api/v1/authors
    end
  end
end
