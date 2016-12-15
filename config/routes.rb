Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'playlists#index'

  resources :artists do
    resources :songs
  end

  resources :songs
  resources :playlists

end
