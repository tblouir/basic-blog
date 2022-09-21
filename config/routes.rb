Rails.application.routes.draw do
  root 'articles#index'

  resources :articles do
    # Nested resource, so path is localhost:3000/articles/:id/comments/:id
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
