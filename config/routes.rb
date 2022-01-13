Rails.application.routes.draw do
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  get 'crud', to: "crud#index"
=======
  get 'reports/index', to: "reports#index"
>>>>>>> 8696622 (Adding initial desing)
=======
  get 'reports/index', to: "reports#index"
>>>>>>> 3af6f1d (Adding initial desing)
=======
  get 'reports/index', to: "reports#index"
>>>>>>> 28daa45e22760aef1630bdba612cb3f090bbe16f
  get 'admin', to: "home#index"
  root "employee#employee"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
