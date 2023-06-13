Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'tasks#index'
  get 'tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show', as: :task
  get '/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'
  get 'tasks/:id/edit', to: 'tasks#edit'
  delete 'tasks/:id', to: 'tasks#destroy'
end
