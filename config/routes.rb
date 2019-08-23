Rails.application.routes.draw do
  get "parks" => 'parks#all'
  get "parks/random" => 'parks#random'
  resources :states do
    resources :parks
  end
end
