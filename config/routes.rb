Mouse::Application.routes.draw do
  resources :movements, :only => [:index, :create]
  resources :positions, :only => [:index, :create]
end
