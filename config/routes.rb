Rails.application.routes.draw do
  #READ
  get "/tasks", to: "tasks#index", as: :tasks

  #CREATE
  get "/tasks/new", to: "tasks#new", as: :new_task
  post "/tasks", to: "tasks#create"

  #UPDATE
  get "/tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "/tasks/:id", to: "tasks#update"

  #DELETE
  delete "/tasks/:id", to: "tasks#destroy"

  #READ
  get "/tasks/:id", to: "tasks#show", as: :task

end
