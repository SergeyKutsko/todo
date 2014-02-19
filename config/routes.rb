SergeyKutskoProject::Application.routes.draw do
  defaults(format: :json) do
    constraints(format: :json) do
      resources :users, only: [:create]
      resources :sessions, only: [:create, :destroy]
      namespace :api do
        namespace :v1 do
          resources :todos
        end
      end
    end
  end
end
