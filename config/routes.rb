Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 resources :songs, only: [:show, :new, :edit]
 resources :artists, only: [:show]

 resources :songs, only: [:index]
 post 'songs/upload', to: 'songs#upload'
end
