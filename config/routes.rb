Rails.application.routes.draw do
  get 'crud', to: "employee_crud#index"
  get 'crud/:id', to: "employee_crud#index"
  get 'reports/index', to: "reports#index"
  get 'admin', to: "home#index"
  post 'admin', to: "home#login"
  post 'logout', to: "employee_crud#logout"
  post 'create_employee', to: "employee_crud#create"
  post 'edit_employee', to: "employee_crud#edit"
  post 'disable_employee', to: "employee_crud#disable"
  post 'check', to: "employee#check"
  root "employee#employee"
end
