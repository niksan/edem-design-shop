EdemDesignShop::Application.routes.draw do
  root to: "main#index"
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  devise_for :users
end
