Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :articles

end

# Prefix Verb   URI Pattern                            Controller#Action
#                rails_health_check GET    /up(.:format)                          rails/health#show
#                          articles GET    /articles(.:format)                    articles#index
#                                   POST   /articles(.:format)                    articles#create
#                       new_article GET    /articles/new(.:format)                articles#new
#                      edit_article GET    /articles/:id/edit(.:format)           articles#edit
#                           article GET    /articles/:id(.:format)                articles#show
#                                   PATCH  /articles/:id(.:format)                articles#update
#                                   PUT    /articles/:id(.:format)                articles#update
#                                   DELETE /articles/:id(.:format)                articles#destroy
