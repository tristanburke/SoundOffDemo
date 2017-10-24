Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # map '/' to be a redirect to '/discover#show'
  root 'homepage#show'

  get 'homepage/', to: 'homepage#show', as: 'homepage'
  get 'discovery/show', to: 'discovery#show', as: 'discovery_show'
  post 'discovery/next', to: 'discovery#next', as: 'discovery_next'
end
