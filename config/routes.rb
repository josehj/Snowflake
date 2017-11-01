Rails.application.routes.draw do

  get 'welcome/index'
  root 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :story, only: [:index,:show, :create]

  #stories

  get 'stories/new',  to: 'story#new',  as: 'new_story'
end
