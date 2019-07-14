Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do
    authenticated :user do
      root to: 'products#index'
    end
  end

  resources :products, only: [:index, :show]
  resources :users, only: :show

  devise_scope :user do
    root to: "devise/sessions#new"
  end 

end
