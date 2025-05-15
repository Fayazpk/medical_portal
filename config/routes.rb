Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  
  resources :patients do
    collection do
      get :dashboard
    end
  end
end