GeniRailsExample::Application.routes.draw do
  match 'auth'   => 'geni#auth',   :as => 'auth'
  match 'unauth' => 'geni#unauth', :as => 'unauth'
  
  match 'callback' => 'geni#callback'
  
  resources :profiles
  
  root :to => 'profiles#show', :id => 'me'
end
