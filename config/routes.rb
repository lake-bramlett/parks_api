Rails.application.routes.draw do
  resources :states do
    reources :parks
  end
end
