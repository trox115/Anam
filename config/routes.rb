Rails.application.routes.draw do
  resources :inscricaos
  root 'inscricaos#new'
    get '/email', to: 'inscricaos#email'
    get '/telemovel', to: 'inscricaos#telemoveis'
end
