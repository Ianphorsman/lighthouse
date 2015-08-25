Rails.application.routes.draw do
  devise_for :users

  root to: 'movies#index'

  resource :movies

end
