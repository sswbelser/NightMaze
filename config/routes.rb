Rails.application.routes.draw do

	root "pages#index"

	get "/about", to: "pages#show", as: :about

	resources :users, only: [:create, :destroy]

	resources :sessions, only: [:create]
	get "/logout", to: "sessions#destroy", as: :logout

end