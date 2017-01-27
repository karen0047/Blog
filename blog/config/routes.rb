Rails.application.routes.draw do
  resources :posts
  get 'welcome/index'
  get "/pages/:page" => "pages#show"
  resources	:articles

  root 'articles#index'
end
