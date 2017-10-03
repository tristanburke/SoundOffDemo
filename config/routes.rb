Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs
  resources :discovery

  # map '/' to be a redirect to '/discover#show'
  root 'discovery#show'

end
