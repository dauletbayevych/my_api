Rails.application.routes.draw do
  resources :mysts
  post '/register', to: 'users#create'
  post '/login', to: 'authentication#authenticate'
end
