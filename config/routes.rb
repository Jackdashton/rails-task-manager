Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  # Need to create a link for task list
  get '/tasks', to: 'tasks#index'
  # get request to /tasks url, tasks controller for action index. Need html index now and action index
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'

  get '/tasks/:id', to: 'tasks#show', as: :task
  # as: :task needed to create prefix for link to page.
  # get request to /tasks url/with specific id, tasks controller for action show. Need html show now and action show
  get '/tasks/:id/edit', to: 'tasks#edit'
  # need above for edit page, must be dynamic as before.
  patch '/tasks/:id', to: 'tasks#update'
  # Ensure this is PATCH not get or post.
  #delete
  delete '/tasks/:id', to: 'tasks#destroy'
end
