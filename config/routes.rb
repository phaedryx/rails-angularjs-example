RailsAngularjsExample::Application.routes.draw do
  get "welcome/index"
  root to: 'welcome#index'

  namespace :api do
    resources :users
  end
end
