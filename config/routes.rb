Rails.application.routes.draw do
  resources :contacts
  root "site#index"
end
