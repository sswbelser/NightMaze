Rails.application.routes.draw do

	root "pages#index"

	get "/about", to: "pages#show", as: :about

	resources :users, only: [:create, :update, :destroy]
	get "/signup", to: "users#new", as: :signup
	get "/edit-user", to: "users#edit", as: :edit_user

	resources :sessions, only: [:create]
	get "/login", to: "sessions#new", as: :login
	get "/logout", to: "sessions#destroy", as: :logout

end