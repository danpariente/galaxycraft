Rails.application.routes.draw do
  resources :journeys do
     resources :students, only: :show
  end

  resources :students do
    resource :profile, only: [:new, :create, :show]
    resources :quests, only: [:show, :index]
  end

  resources :quests, only: [:new, :create]
  resources :paths, only: :create

  resources :assignments
end
