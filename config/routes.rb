Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Read (index)
  get 'tasks', to: 'tasks#index'
    #Create
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  #Read (show)
  get 'tasks/:id', to: 'tasks#show', as: "task"
  #Update (edit)
  get 'tasks/:id/edit', to: 'tasks#edit', as: "edit"
  patch 'tasks/:id', to: 'tasks#update'
  #Delete
  delete 'tasks/:id', to: 'tasks#destroy', as: 'delete'
  root to: 'tasks#index'
end
