match "*path" => redirect("https://www.teamraftaar.com/%{path}"), :constraints => { :protocol => "http://" }
match "*path" => redirect("https://www.teamraftaar.com/%{path}"), :constraints => { :subdomain => "" }


Rails.application.routes.draw do

  root 'static_pages#home'
  get  '/contact',  to: 'messages#new'
  post '/contact',  to: 'messages#create'
  get  '/forms',    to: 'static_pages#forms'
  get  '/about',    to: 'static_pages#about'
  get  '/googlecb4b52e84bc8ad0b', to: 'static_pages#googlecb4b52e84bc8ad0b'
  resources :messages, only: [:new, :create]
end
