Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :topics, only: [:index, :create] do
        resources :subtopics, only: [:index, :create, :show, :update]
      end
    end
  end
end
