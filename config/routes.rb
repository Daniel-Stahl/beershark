Rails.application.routes.draw do

  	devise_for :members, controllers: { registrations: "registrations" }
  	devise_for :hackers
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	resources :bar_keep
	resources :choose_profile

  	root 'home#index'

end
