Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'

  get '/salons', to: 'salons#index'
  get '/salons/new', to: 'salons#new'
  post '/salons', to: 'salons#create'
  # config/routes.rb

  get '/salons/:id', to: "salons#show"
  get '/salons/:id/edit', to: 'salons#edit'
  patch '/salons/:id', to: 'salons#update'
  delete '/salons/:id', to: 'salons#destroy'
end
