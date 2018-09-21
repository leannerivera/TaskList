Rails.application.routes.draw do
  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show'
  patch '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task' #edit task via ID
  get '/tasks/add', to: 'tasks#add', as: 'add_task' #gets form to user
  post '/tasks', to: 'tasks#create' #to create a task in DB after form submission
  delete '/tasks/:id', to: 'task#destroy', as: 'delete_task'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
