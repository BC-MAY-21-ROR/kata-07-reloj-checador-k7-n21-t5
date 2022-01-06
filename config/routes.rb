Rails.application.routes.draw do
<<<<<<< HEAD
<<<<<<< HEAD
  get 'crud', to: "employee_crud#index"
  get 'crud/:id', to: "employee_crud#index"
=======
>>>>>>> 8696622 (Adding initial desing)
=======
>>>>>>> 3af6f1d (Adding initial desing)
  get 'reports/index', to: "reports#index"
  get 'admin', to: "home#index"
  post 'admin', to: "home#login"
  post 'logout', to: "employee_crud#logout"
  post 'createEmployee', to: "employee_crud#create"
  post 'editEmployee', to: "employee_crud#edit"
  post 'disableEmployee', to: "employee_crud#disable"
  root "employee#employee"
end
