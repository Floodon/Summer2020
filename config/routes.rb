Rails.application.routes.draw do
  devise_for :artistes
  resources :artistes
  resources :profil_artistes

  root to: "welcome#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
