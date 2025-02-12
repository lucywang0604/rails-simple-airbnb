Rails.application.routes.draw do
  resources :flats, only: [:index, :new, :create, :show]
end
