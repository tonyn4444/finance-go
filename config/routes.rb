Rails.application.routes.draw do
  
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :user_stocks
  resources :users, only: [ :show ]
  resources :friendships
  get 'search_friends', to: 'users#search'
	post 'add_friend', to: 'users#add_friend'
  
	get 'landing', to: 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  root to: 'users#my_portfolio'

  get 'search_stocks', to: 'stocks#search'
  get 'my_friends', to: 'users#my_friends'
end
