Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :artifacts, only: [:index]

      resources :topics, only: [:index, :create, :show, :destroy] do
        resources :subtopics, only: [:index, :create, :show, :update] do
          resources :artifacts, only: [:index, :create, :show, :update]
        end
      end
      resources :artifacts, only: [:show, :index, :create, :update, :destroy] do
        resources :comments, only: [:index, :create, :show]
      end
    end
  end
end
