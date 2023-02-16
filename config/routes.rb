Rails.application.routes.draw do
  resources :especialidades
  resources :especialidadades
  resources :mining_types
  get 'welcome/index'
  
  resources :cdzs
  
  #root to: 'welcome#index'
  root to: index.html
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
