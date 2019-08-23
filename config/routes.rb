Rails.application.routes.draw do
  get "parks/random" => 'parks#random'
  resources :states do
    resources :parks
  end
end
