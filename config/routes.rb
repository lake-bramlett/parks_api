Rails.application.routes.draw do
  concern :api_base do
    get "parks/search" => 'parks#search'
    get "parks" => 'parks#all'
    get "parks/random" => 'parks#random'
    resources :states do
      resources :parks
    end
  end

  namespace :v1 do
    concerns :api_base
  end
end
