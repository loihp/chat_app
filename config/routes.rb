Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#index'
  devise_for  :users,
              path: '',
              path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' },
              :controllers => { :registrations => "users/registrations", :sessions => "users/sessions" }

  resources :rooms
  # Defines the root path route ("/")
  # root "articles#index"

  post '/subscription', to: 'users#subscription'
end


