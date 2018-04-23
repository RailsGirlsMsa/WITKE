Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'welcome/index'

  root 'welcome#index'

  root to: "events#index"

  resources :events
end
