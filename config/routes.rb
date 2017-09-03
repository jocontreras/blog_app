Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :articles do
    resources :comments
  end

  get "/author", to: "author#show", as: "author"

  root 'articles#index'

end
