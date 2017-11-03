Rails.application.routes.draw do

  get 'welcome/index'
  root 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :story, only: [:index,:show, :create]

  #stories

  get 'form/story',  to: 'form#story',  as: 'new_story'

  #Steps
  resources :story do

    resources :character, only: [:show]
    get 'form/character',  to: 'form#character',  as: 'new_character'
    get 'step/one',  to: 'step#one',  as: 'step_one'
    get 'step/two',  to: 'step#two',  as: 'step_two'
    get 'step/three',  to: 'step#three',  as: 'step_three'
    get 'step/four',  to: 'step#four',  as: 'step_four'
    get 'step/five',  to: 'step#five',  as: 'step_five'
    get 'step/six',  to: 'step#six',  as: 'step_six'
    get 'step/seven',  to: 'step#seven',  as: 'step_seven'
    get 'step/eight',  to: 'step#eight',  as: 'step_eight'
    get 'step/nine',  to: 'step#nine',  as: 'step_nine'
    get 'step/ten',  to: 'step#ten',  as: 'step_ten'
  end
end
