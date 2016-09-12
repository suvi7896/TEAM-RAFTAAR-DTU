Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/contact'
  get 'static_pages/forms'
  get 'static_pages/about'

end
