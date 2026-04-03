Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check
  # get '/', to: 'top#index'最初のトップページ作成だったもの
  root "top#index"
  # root "items#index" #　/にアクセスした時の画面
  resources :items
  resources :users, only: [:index, :new, :create, :destroy]
end