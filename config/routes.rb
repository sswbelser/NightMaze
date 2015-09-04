Rails.application.routes.draw do

	root "pages#index"

	get "/about", to: "pages#show", as: :about

	resources :users, only: [:create, :update, :destroy]
	get "/edit-user", to: "users#edit", as: :edit_user

	resources :sessions, only: [:create]
	get "/logout", to: "sessions#destroy", as: :logout

end