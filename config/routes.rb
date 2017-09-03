Rails.application.routes.draw do
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  resources :articles do
    resources :comments
  end

  get "/author", to: "author#show", as: "author"

  root 'articles#index'

end
