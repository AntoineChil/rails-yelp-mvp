Rails.application.routes.draw do
  resources :restaurants, except: [:destroy, :edit, :update] do
    resources :reviews, only: [:index, :create]
  end
end
