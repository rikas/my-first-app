Rails.application.routes.draw do
  root to: 'pages#home'
  # SAME AS: get '/', to: 'pages#home'

  get '/contacts', to: 'pages#contacts'
  get '/about', to: 'pages#about'

  get '/home', to: 'pages#home'

  # VERB 'PATH', to: 'CONTROLLER NAME#ACTION NAME'
end
