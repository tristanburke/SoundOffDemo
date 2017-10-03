Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs
  resources :discovery

  # map '/' to be a redirect to '/discover#show'
  root 'home#index'

  namespace :app do
    get '/browse', to: 'browse#show', as: 'browse'
    get '/discovery', to: 'discovery#show', as: 'discovery'
    post '/discovery/:id', to: 'discovery#favorite', as: 'discovery_favorite'
    post '/discovery/toggle', 'discovery#toggle', as: 'discovery_toggle'
    get '/discovery/next' => redirect('/discovery'), as: 'discovery_next'
    get '/competition', to: 'competition#show', as: 'competition'
    post '/competition/:id', to: 'competition#favorite', as: 'competition_favorite'
    post '/competition/toggle/:id', to: 'competition#toggle'
    get '/competition/next' => redirect('/competition'), as: 'competition_next'
  end





end
