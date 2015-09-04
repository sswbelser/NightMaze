Rails.application.routes.draw do

	root "pages#index"

	resources :users, only: [:create, :update, :destroy]
	get "/signup", to: "users#new", as: :signup
	get "/edit-profile", to: "users#edit", as: :edit_profile

	resources :sessions, only: [:create]
	get "/login", to: "sessions#new", as: :login
	get "/logout", to: "sessions#destroy", as: :logout

end