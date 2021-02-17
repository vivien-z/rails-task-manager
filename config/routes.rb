Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # READ
  get '/tasks', to: 'tasks#index', as: 'tasks'
  # CREATE
  get '/tasks/new', to: 'tasks#new', as: 'new_task' # provide form to get data from client
  post '/tasks', to: 'tasks#create'
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'
  # DELETE
  delete '/tasks/:id', to: 'tasks#destroy'
end
