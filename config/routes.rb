Rails.application.routes.draw do
  get 'admin', to: "home#index"
  root "employee#employee"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
