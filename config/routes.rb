Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

root 'posts#blog'
  resources :posts 
end
