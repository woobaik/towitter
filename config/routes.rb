Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/edit'
  get 'comments/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments
  end
  root to:'posts#index'
end
