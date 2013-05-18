RailsAngularjsExample::Application.routes.draw do
  root to: 'welcome#index'

  namespace :api do
<<<<<<< HEAD
    resources :users
  end

  match '*path' => 'welcome#index'
=======
    resources :people
  end
>>>>>>> e3fe033cd73303396b9dee67ed53915b222a9091
end
