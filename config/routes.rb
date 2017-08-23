
Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/contact',  to: 'messages#new'
  post '/contact',  to: 'messages#create'
  get  '/sponsors',    to: 'static_pages#sponsors'
  get  '/about',    to: 'static_pages#about'


  resources :messages, only: [:new, :create]
end
