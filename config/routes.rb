Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

get "/blogs/page", to:"pages#blogs",as:"blogs"
end
