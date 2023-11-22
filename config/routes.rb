# Rails.application.routes.draw do
#   devise_for :users, controllers: {
#     sessions: 'users/sessions'
#     # Add other controllers here if you generated them and want to customize
#   }
#     # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Defines the root path route ("/")
#   # root "articles#index"
# end
Rails.application.routes.draw do
  # Your other routes...

  devise_for :users, controllers: {registrations: "users/registrations"}

  # Additional custom routes or resources can be added here...

  # Define a root route
  root 'welcome#index'
end
