Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

get "/welcome/blog", to:"welcome#blog",as:"blog"
end
