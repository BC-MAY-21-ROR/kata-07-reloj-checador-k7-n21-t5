Rails.application.routes.draw do
  get 'employee_status/new'
  get 'employee_status/create'
  get 'crud', to: "employee_crud#index"
  get 'crud/:id', to: "employee_crud#index"
  get 'admin', to: "home#index"
  post 'logout', to: "employee_crud#logout"
  post 'createEmployee', to: "employee_crud#create"
  post 'editEmployee', to: "employee_crud#edit"
  post 'disableEmployee', to: "employee_crud#disable"
  root "employee#employee"

end
