Rails.application.routes.draw do
<<<<<<< HEAD
  get 'employee_status/new'
  get 'employee_status/create'
  get 'crud', to: "employee_crud#index"
  get 'crud/:id', to: "employee_crud#index"
=======
<<<<<<< HEAD
  get 'crud', to: "crud#index"
=======
  get 'reports/index', to: "reports#index"
>>>>>>> 8696622 (Adding initial desing)
>>>>>>> 2fe59be (Adding initial desing)
  get 'admin', to: "home#index"
  post 'admin', to: "home#login"
  post 'logout', to: "employee_crud#logout"
  post 'createEmployee', to: "employee_crud#create"
  post 'editEmployee', to: "employee_crud#edit"
  post 'disableEmployee', to: "employee_crud#disable"
  root "employee#employee"
end
