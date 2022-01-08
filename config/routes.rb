Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  # show all
  get '/tasks', to: 'tasks#index', as: :tasks
   # create a task
  post '/tasks', to: 'tasks#create'
  get '/tasks/new', to: 'tasks#new', as: :new_task
  # update a task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # show one task
  get '/tasks/:id', to: 'tasks#show', as: :task
  patch '/tasks/:id/', to: 'tasks#update'
  # destroy a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
