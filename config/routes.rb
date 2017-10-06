Rails.application.routes.draw do

  devise_for :users
  resource :lists

  root "lists#index"

end
