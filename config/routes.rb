Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'

  get '/salons', to: 'salons#index'
  get '/salons/new', to: 'salons#new'
  get '/salons/:id', to: 'salons#show'
  post '/salons', to: 'salons#create'
  get '/salons/:id/edit', to: 'salons#edit'
  patch '/salons/:id', to: 'salons#update'
  delete '/salons/:id', to: 'salons#destroy'

  get '/workstations', to: 'workstations#index'
  get '/workstations/:id', to: 'workstations#show'
  get '/workstations/new', to: 'workstations#new'
  post '/workstations', to: 'workstations#create'
  get '/workstations/:id/edit', to: 'workstations#edit'
  patch '/workstations/:id', to: 'workstations#update'
  delete '/workstations/:id', to: 'workstations#destroy'

  get '/salons/:salon_id/workstations', to: 'salon_workstations#index'
  get '/salons/workstations', to: 'salon_workstations#index'
  get '/salons/:id/workstation/new', to: 'workstations#new'
end
