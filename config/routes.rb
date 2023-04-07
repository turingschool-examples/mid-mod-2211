Rails.application.routes.draw do
  root "welcome#index"

  resources :foods, only: [:index], :controller => "search"

  
end
