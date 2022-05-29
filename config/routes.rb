Rails.application.routes.draw do
  # resources :comments
  # get 'pages/info'
  # root to: redirect('/ideas')
  # resources :ideas

  resources :ideas do
    resources :comments
  end

  resources :comments do
    resources :ideas
  end

  get 'pages/info'
  root to: redirect('/ideas')

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
