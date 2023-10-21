Rails.application.routes.draw do
  root 'posts#index'
  get '/about', to: 'pages#about'
  resources :posts do
    resources :comments
  end
end
