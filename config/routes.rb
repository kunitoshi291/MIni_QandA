Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # CRUDアプリケーションで使うルーティングを自動生成
  resources :questions
end
