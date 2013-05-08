RailsAngularjsExample::Application.routes.draw do
  root to: 'welcome#index'

  namespace :api do
    resources :people
  end
end
