Rails.application.routes.draw do
  root to: "pages#home"

  get 'carts/:id' => "carts#show", as: "cart"
  get 'carts/:id/add' => "carts#add_product", as: "cart_add"
  get 'carts/:id/reduce' => "carts#reduce_quantity", as: "cart_reduce"

  get 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  get 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
  post 'line_items' => "line_items#create"
  delete 'line_items/:id' => "line_items#destroy", as: "line_item_erase"

  resources :orders, only: %i[index show new create]
  resources :carts, only: :destroy
  resources :pages, only: %i[index create]
  resources :products

  # devise_for :users, controllers: {
  #  omniauth_callbacks: "omniauth_callbacks"
  # }
end
