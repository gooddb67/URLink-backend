Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :topics, only: [:index, :create, :show] do
        resources :subtopics, only: [:index, :create, :show, :update] do
          resources :artifacts, only: [:index, :create, :show, :update] do
            resources :comments, only: [:index, :create]
          end
        end
      end
    end
  end
end
