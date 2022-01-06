Rails.application.routes.draw do
<<<<<<< HEAD
  get 'crud', to: "crud#index"
=======
  get 'reports/index', to: "reports#index"
>>>>>>> 8696622 (Adding initial desing)
  get 'admin', to: "home#index"
  root "employee#employee"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
