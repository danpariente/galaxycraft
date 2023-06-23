Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :journeys, only: [] do
        resources :quests, only: [:index]
      end
    end
  end

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
