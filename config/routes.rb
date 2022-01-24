Rails.application.routes.draw do
  get 'crud', to: "employee_crud#index"
  get 'crud/:id', to: "employee_crud#index"
  get 'reports', to: "reports#index"
  get 'admin', to: "home#index"
  get 'branches', to: "branches#index"
  post 'admin', to: "home#login"
  post 'logout', to: "employee_crud#logout"
  post 'create_employee', to: "employee_crud#create"
  post 'edit_employee', to: "employee_crud#edit"
  post 'disable_employee', to: "employee_crud#disable"
  post 'check', to: "employee#check"
  post 'create_branch', to: "branches#create"
  post 'edit_branch', to: "branches#edit"
  post 'delete_branch', to: "branches#delete"
  root "employee#employee"
end
