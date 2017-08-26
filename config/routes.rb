Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  root 'home#index'

  devise_for :users, :controllers => { :sessions => "sessions" }
  resources :conversations
  resources :messages

  scope '/admin' do
  	resources :users
  	resources :groups
  	resources :themes
  	resources :type_of_themes, path: 'types'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
