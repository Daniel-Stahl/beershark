Rails.application.routes.draw do

  	devise_for :members, controllers: { registrations: "registrations" }
  	devise_for :hackers
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	# get 'bar_keep/dashboard'
  	# get '/bar_keep/:id/dashboard', to: 'bar_keep#dashboard'
  	resources :bar_keep do
  		get :dashboard, on: :member
	  end
  	# resources :bar_keep
  	resources :patron
	  resources :choose_profile

  	root 'home#index'

end
