Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  root to: "events#index"

  resources :posts
end
