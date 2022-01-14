Rails.application.routes.draw do
  get 'crud', to: "crud#index"
  get 'crud/:id', to: "crud#index"
  get 'admin', to: "home#index"
  post 'logout', to: "crud#logout"
  post 'createEmployee', to: "crud#create"
  post 'editEmployee', to: "crud#edit"
  post 'disableEmployee', to: "crud#disable"
  root "employee#employee"

end
