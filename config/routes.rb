Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :products
  resources :category

  authenticate :admin do
    resource :products
    resource :categories
  end

  resource :cart, only: [:show, :update] do
    member do
      post :pay_with_paypal
      get :process_paypal_payment
    end
  end

  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
