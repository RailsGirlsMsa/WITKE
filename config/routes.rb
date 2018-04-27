Rails.application.routes.draw do
  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'

  root 'welcome#index'

  root to: "events#index"

  resources :events
end
