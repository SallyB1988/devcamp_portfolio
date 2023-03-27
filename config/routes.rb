Rails.application.routes.draw do
  resources :portfolios

  # controller on the left of the hash, action on the right
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs
 
  root to: 'pages#home'
end
