Rails.application.routes.draw do

  resources :preferences
  resources :artists do	  resources :artists do
    resources :songs, only: [:index, :show]	    resources :songs, only: [:index, :show]
  end	  end
  resources :songs	  resources :songs


   namespace :admin do
    resources :preferences, only: [:index]
  end

 end  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
