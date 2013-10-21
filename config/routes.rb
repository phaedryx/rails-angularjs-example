RailsAngularjsExample::Application.routes.draw do
  root to: 'welcome#index'

  namespace :api do
    resources :users
    resources :people
  end

  match '*path' => 'welcome#index'

end
