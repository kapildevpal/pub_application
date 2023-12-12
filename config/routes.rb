Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # config/routes.rb

#   devise_for :users, controllers: {
#     sessions: 'users/sessions'
#     # Add other controllers here if you generated them and want to customize
#   }
#     # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Defines the root path route ("/")
#   # root "articles#index"
# end
# Rails.application.routes.draw do
  devise_for :pub_owners
  devise_for :users, controllers: {registrations: "users/registrations"}
  resources :pub_profiles do
    resources :menus, :offers
  end
  resources :menus
  resources :offers
  resources :bookings
 
  # Additional custom routes or resources can be added here...

  # Define a root route
  root 'welcome#index'
end
