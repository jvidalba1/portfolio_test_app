Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "users#index"
  resources :users

  scope '/zemoga_portfolio_api' do
    get 'user_info/:id', to: "users#show", defaults: {format: :json}
    patch 'modify_user_info/:id', to: "users#update", defaults: {format: :json}
  end
end
