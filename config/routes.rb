Rails.application.routes.draw do
  resources :inscricaos
  root 'inscricaos#new'
end
