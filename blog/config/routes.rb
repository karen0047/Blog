Rails.application.routes.draw do
  resources :articles
  root 'articles#index'
  get 'welcome/index'
  get "/pages/:page" => "pages#show"
end
