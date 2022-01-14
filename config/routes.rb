Rails.application.routes.draw do
  get 'crud', to: "crud#index"
  get 'crud/:id', to: "crud#index"
  get 'admin', to: "home#index"
<<<<<<< HEAD
  post 'admin', to: "home#login"
=======
  post 'logout', to: "crud#logout"
  post 'createEmployee', to: "crud#create"
  post 'editEmployee', to: "crud#edit"
  post 'disableEmployee', to: "crud#disable"
>>>>>>> dc20568 (Crud backend and fixes done)
  root "employee#employee"

end
