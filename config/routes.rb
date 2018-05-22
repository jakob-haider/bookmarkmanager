Rails.application.routes.draw do
  resources :folders
  get '/parse', to: 'bookmarks#parse' #for development
  resources :bookmarks
  root to: 'folders#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
