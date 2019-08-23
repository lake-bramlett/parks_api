Rails.application.routes.draw do
  get "parks" => 'parks#all'
  get "parks/search" => 'parks#search'
  get "parks/random" => 'parks#random'
  resources :states do
    resources :parks
  end
end
