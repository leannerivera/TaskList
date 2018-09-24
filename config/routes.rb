Rails.application.routes.draw do
  root 'tasks#index'


  get '/tasks', to: 'tasks#index', as: 'tasks'

  get '/tasks/new', to: 'tasks#new', as: 'new_task' #gets form to user
  post '/tasks', to: 'tasks#create' #to create a task in DB after form submission

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task' #edit task via ID

  get '/tasks/:id', to: 'tasks#show', as: 'task'

  patch '/tasks/:id', to: 'tasks#update'
  put '/tasks/:id', to: 'tasks#update'

  delete '/tasks/:id', to: 'tasks#destroy', method: :destroy, as: 'delete_task'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
