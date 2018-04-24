Rails.application.routes.draw do
  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'
  get 'welcome/index'

  root 'welcome#index'

  root to: "events#index"

  resources :events
end
