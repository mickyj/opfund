Rails.application.routes.draw do











  
  resources :fellows, except: [:new, :edit]
  resources :fellows

  get '*path', to: 'home#index'
end
