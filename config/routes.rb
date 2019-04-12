Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  namespace :mobile_api do
    resources :subscriptions
  end
end
