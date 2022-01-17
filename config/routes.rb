Rails.application.routes.draw do
  get 'employee_status/new'
  get 'employee_status/create'
  get 'crud', to: "employee_crud#index"
  get 'crud/:id', to: "employee_crud#index"
  get 'admin', to: "home#index"
<<<<<<< HEAD
<<<<<<< HEAD
  post 'admin', to: "home#login"
=======
  post 'logout', to: "crud#logout"
  post 'createEmployee', to: "crud#create"
  post 'editEmployee', to: "crud#edit"
  post 'disableEmployee', to: "crud#disable"
>>>>>>> dc20568 (Crud backend and fixes done)
=======
  post 'logout', to: "employee_crud#logout"
  post 'createEmployee', to: "employee_crud#create"
  post 'editEmployee', to: "employee_crud#edit"
  post 'disableEmployee', to: "employee_crud#disable"
>>>>>>> 7f836c5 (Changed name of crud controller)
  root "employee#employee"

end
